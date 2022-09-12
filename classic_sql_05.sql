create database primary_foreign 
go 
use primary_foreign 
go 

create table BoMon
(
		MaBM char(10) primary key ,  
		Name01 nvarchar(100) default N'tên bộ môn'

)
go 
create table Lop
(
		Malop char(10) not null , 
		Name01 nvarchar(100) default N'Ten lop' 
		primary key(Malop) 
)
go 
--- điều kiện để tạo khóa ngoại
--- tham chiếu tới khóa chính 
--- unique, not null 
--- cùng kiểu dữ liệu 
--- cùng số lượng trường có sắp xếp 

----> lợi ích:
		-- đảm bảo toàn vẹn dữ liệu, không có trường hợp tham chiếu đến dữ liệu không có s
create table giaovien
(
Magv char(10) not null , 
name nvarchar(100) default N'Ten giao vien' ,  
diachi nvarchar(100) default N'Dia chi giao vien' , 
NgaySinh date, 
MaBm char(10) ,
sex bit  , 
		
		--> lưu ý: khóa ngoại có 2 trường. khóa chính có 2 trường.

	foreign key(MaBm) references dbo.BoMon(MaBM)  
)
go 

alter table dbo.giaovien add primary key(Magv) 

create table hocsinh 
(

 MaLop char(10) not null  , 
 name nvarchar(100) 
)
go 

alter table dbo.hocsinh add   MaLop char(10) not null  
---> tạo khóa ngoại ngoài bảng table với từ khóa constraint 
alter table dbo.hocsinh add constraint fk_hs foreign key (Malop) references dbo.Lop(MaLop) 

---> tạo khóa ngoại ngoài bảng table 
alter table dbo.hocsinh add foreign key (Malop) references dbo.Lop(MaLop) 

--> hủy một khóa ngoại
alter table dbo.hocsinh drop constraint fk_hs 


insert into BoMon values ('01',N'Bo mon 1') 

insert into BoMon values ('02',N'Bo mon 2') 

insert into BoMon values ('02',N'Bo mon 3')

insert into giaovien values('GV01',N'GV 1', N'dc 1' , GETDATE(),1,'BM03')	
