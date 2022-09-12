create  database classicDB_01

go 
use classicDB_01 
create table giaovien  
(
		MaGV nvarchar(10) , 
		tenGV nvarchar(10) ,
		tuoi int , 
)
go
create table sinhvien 
(
		MaSV nvarchar(10) ,
		tenSV nvarchar(100) , 
		tuoi int 

)
alter table sinhvien add ngaysinh date ---> thêm một cột vào bảng sinh viên cú pháp alter table <ten bảng> add <tên thuộc tính> <kiểu dữ liệu> 

drop table giaovien  ---> xóa một bảng bằng lệnh drop table 

truncate table hocsinh --> xóa hết dữ liệu trong bảng table 
