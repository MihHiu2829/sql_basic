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

create table SinhVien 
(
		MSSV char(10) not null primary key , 
		Hoten Nvarchar(40) , 
		NTNS Date , 
		Phai bit default 1  ,
		MaLop char(10) not null ,
	 foreign key (MaLop) references Lop(MaLop)  
)
go 
create table MonHoc 
(	
		MaMH char(10) not null primary key , 
		TenMH nvarchar(60) ,
		TCLT int, check(TCLT > 0 ) , 
		TCTH int, check(TCTH >= 0 ) 
)
drop table MonHoc 
alter table MonHoc drop column TCTH 
go 
create table DiemSV
(
		MSSV char(10) not null , 
		MaMH char(10) not null ,
			DIEM DECIMAL(3,1) ,
		foreign key (MSSV) references SinhVien (MSSV) ,
		foreign key (MaMH) references MonHoc(MaMH) 
)
drop table DiemSV 
--Insert Lop:
Insert into Lop values ('18DTH01',50,N'CNTT khóa 18,lớp 1') 
Insert into Lop values ('18DTH02',45,N'CNTT khóa 18,lớp 2') 
Insert into Lop values ('19DTH01',55,N'CNTT khóa 19,lớp 1') 
Insert into Lop values ('19DTH02',50,N'CNTT khóa 19,lớp 2') 
Insert into Lop values ('19DTH03',40,N'CNTT khóa 19,lớp 3') 


--Insert MonHoc: 
Insert into MonHoc values ('COS201',N'Kỹ Thuật Lập Trình',2,1)
Insert into MonHoc values ('COS202',N'Lý thuyết đồ thị',2,1)
Insert into MonHoc values ('COS203',N'CSDL và quản trị CSDL',3,0)
Insert into MonHoc values ('COS204',N'Phân tích thiết kế hệ thống',3,0)
Insert into MonHoc values ('COS205',N'CSDL phân tán',3,0)

delete MonHoc


--Insert SinhVien 
Insert into SinhVIen values('170001',N'Lê Hoài An','10/12/1999',1,'18DTH01')
Insert into SinhVIen values('180002',N'Nguyễn Thị Hòa Bình','11/20/2000',1,'18DTH01')
Insert into SinhVIen values('180003',N'Phạm Tường Châu','06/07/2000',0,'18DTH02')
Insert into SinhVIen values('180004',N'Trần Công Danh','01/31/2000',0,'18DTH01')

select * from SinhVien 

--Insert DiemSV 

Insert into DIEMSV values ('170001','COS201',10) 
Insert into DIEMSV values ('170001','COS202',10) 
Insert into DIEMSV values ('170001','COS203',10) 
Insert into DIEMSV values ('170001','COS204',10) 
Insert into DIEMSV values ('170001','COS205',10) 
Insert into DIEMSV values ('180002 ','COS201',3.5) 
Insert into DIEMSV values ('180002 ','COS202',7) 
Insert into DIEMSV values ('180003','COS201',8.5) 
Insert into DIEMSV values ('180003','COS202',2) 
Insert into DIEMSV values ('180003','COS203',6.5) 
Insert into DIEMSV values ('180004 ','COS201',8) 
Insert into DIEMSV values ('180004','COS204',null) 

select * from DiemSV
delete DIEMSV


--		Câu 1: Thêm một dòng mới vào bẩng SINHVIEN với giá trị: 
Insert into SinhVIen values('190001',N'Đào Thị Tuyết Hoa','3/8/2001',1,'19DTH02')


--		Câu 2: Hãy đổi tên môn học 'Lý thuyết đồ thị' thành 'Toán rời rạc' 