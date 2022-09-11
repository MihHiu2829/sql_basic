create database SQLDBUI_01
Go

use SQLDBUI_01
create table GiaoVIen
(
	MaGv NVARCHAR(10) , 
	Ten NVARCHAR(100) , 
)
go 

create table HocSinh
(
			MaHs nvarchar(10) ,  
			Ten  nvarchar(100) , 
)
go 

alter table hocsinh add ngaysinh date  


<--- truncate table hocsinh 
<--- drop table HocSinh 
<--- go 