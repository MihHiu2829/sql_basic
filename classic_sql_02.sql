---> Các kiểu dữ liệu hay dùng  

--- int      : kiểu số nguyên, tập hợp N.Ví dụ:: -9 , 8 , -3. 
--- float    : kiểu số thực, tập hợp R, Ví dụ: -0.5 , 0.12 .
--- char     : kiểu kí tự.Bộ nhớ cáp phát cứng VÍ dụ: A,a,B,b,f,k,K -> 10 ô nhớ ko ai đụng vô.
--- varchar  : kiểu ký tự.Bộ nhớ cấp phát động. varchar(10)  -> 10 ô nhớ này chỉ lấy khi có dữ liệu nằm bên trong.
--- nchar    : n viết tắt cho unicode. bộ nhớ cấp phát cứng. có thể lưu tiếng việt.
--- nvarcahr : kiểu ký tự cấp phát động có thể lưuu tiếng việt. dung lượng bằng 1 nửa varchar do p chừa chỗ để lưu dấu.
--- date     : Lưu trữ ngày, tháng, năm , giwof . 
--- time     : lưu trữ giờ, phút , giây.... 
--- bit      : lưu giá trị 0 và 1. 
--- text     : lưu văn bản lớn.
--- ntext    : lưu văn bản lớn có kí tự Unicode( tiếng việt) . 

--- ví dụ: 

create table Test 
(
		Doc text ,  
		Doc_01 nvarchar(50) ,  -- khai báo trường Doc kiểu nvarchar cấp phát động 50 ô nhớ. 
		MaSV char(10) ,  -- khai báo trường mã sinh viên kiểu char cấp phát cứng 10 ô nhớ.
		birthday Date , 
		Sex Bit ,  --- lưu giá trị 0 hoặc 1 
)
go 


--- MaSV lưu 10 ô nhớ, MaSV = "123456789Kteam" -> kết quả lưu trữ là: 