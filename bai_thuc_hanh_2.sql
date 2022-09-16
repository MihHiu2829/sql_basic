create database Bai_Thuc_hanh_2
go 


use Bai_Thuc_Hanh_2
go 

create table Lop 
(
	MaLop char(10) not null primary key , 
	SiSo TinyInt, check(SiSo > 0 )   ,
	TenLop NVarchar(40) 
)
go 

create table MonHoc 
(
		MaMH char(10) not null primary key , 
		Hoten Nvarchar(40) , 
		NTNS Date , 
		Phai bit default 1  ,
		MaLop char(10) not null ,
		 foreign key (MaLop) references Lop(MaLop)  
)
go 

