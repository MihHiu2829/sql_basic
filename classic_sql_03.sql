--- thêm dữ liệu
--- Kiểu số -> số bình thường
--- Kiểu ký tự hoặc ngày cần để trong cặp nháy đơn
--- Nếu là unicode thì cần có N phía trước cặp nháy đơn N' '


 insert dbo.hocsinh (MaSV, TenSinhVIen , ngaySinh) 
 values (N'5', -- MaHS = varchar(10) 
		 N'DoanMinhHieu', -- Name = nvarchar(100) 
		 '20030512' -- NgaySinh = date  
		 )
	create table test02
(
		MaSo int ,  
		Ten Nvarchar(10) ,  
		ngaysinh date ,  
		gioitinh bit , 
		diachi char(20) , 
		tienluong float , 
) 

		go 
insert dbo.test02 (MaSo,Ten,ngaysinh,gioitinh,diachi, tienluong) 
values ( 2003, N'Minh Hieu','20031205',1,'Viet Nam',100.3)  ---> cách thường dùng
 
insert dbo.test02  
values ( 2003, N'Minh Hieu','20031205',1,'Viet Nam',100.3)  ---> cách insert ngắn gọn
 insert dbo.test02  
values ( 2003, N'Minh Hieu','20031205',1,'Viet Nam',20.3)  ---> cách insert ngắn gọn
  insert dbo.test02  
values ( 2003, N'Minh Hieu','20031205',1,'Viet Nam',99.3)  ---> cách insert ngắn gọn
   
  
  --- xóa dữ liệu.  
  delete dbo.test02 where tienluong > 100
  --- xóa dữ liệu kèm theo điều kiện. 
 delete dbo.test02 where tienluong > 80 and maso < 20 
 --- nếu chỉ delete <ten bảng> => xóa toàn bộ dữ liệu trong bảng.
 delete dbo.test02 
 --- xóa trường mong muốn dùng where. các toán tử: <,>,>=,<=,<>,and,or, = 

 -- update dữ liệu 
 -- update dữ liệu toàn bộ bảng với một trường update 
   update dbo.test02 set tienluong = 1 

 -- update dữ liệu toàn bộ bảng bởi nhiều trường update
 update dbo.test02 set tienluong = 1 ,diachi = 'dia chi' 
