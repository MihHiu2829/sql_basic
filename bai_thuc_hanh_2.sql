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
--drop table MonHoc 
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
-- drop table DiemSV 
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
update MonHoc  set MonHoc.TenMH = N'Toán rời rạc' where MonHoc.TenMH = N'Lý thuyết đồ thị'	
select * from MonHoc

-- Câu 3 :Hiển thị ten các môn học không có thực hành. 
select * from MonHoc M where M.TCTH = 0 

-- Câu 4:	Hiẻn thị tên các môn học vừa có lý thuueets vừa có thực hành
select * from MonHoc M where M.TCTH <> 0 

-- Câu 5:	In ra các môn học có kí tự đầu của tên là chữ 'C'

select * from MonHoc M where M.TenMH like 'C%'

-- Câu 6:  Liệt kê thông tin nững sinh viên mà họ chứa chữ thị. 
select * from SinhVien sv where sv.Hoten like N'%Thị%' 

--Câu 7:	In ra 2 lớp có sĩ số đông nhất ( Bằng nhiều cách ). Hiển thị: Mã lớp, Tên lớp. Sĩ số. Nhận xẻt?
select * from Lop 
select Top 2 with TIES * from Lop order by siso desc 

select * from lop  where siso >= all(select siso from lop)

--select * from lop  where siso >= all(select siso from lop)

-- Câu 8:	In danh sách sv theo từng lớp: MSSV, Họ tên SV, Năm sinh, Phái (Nam/Nữ). 

select sv.MSSV , sv.HoTen, sv.NTNS, l.TenLop , case phai when 1 then 'Nam' else 'Nu' end N'Tên Phái' from SinhVien sv, Lop L where sv.MaLop = l.MaLop  

--9	Cho biết nhữg sinh viên có tuổi >= 20 tuổi, thông tin gồm: Họ tên sv, Ns, tuổi. 
select Hoten, ntns, (YEAR(GETDATE()) - YEAR(ntns))  N'Tuổi'  from sinhvien  where (YEAR(GETDATE()) - YEAR(ntns)) >= 20  

-- 10	Liệt kê tên các môn học SV đã dự thi nhưng chưa có điểm.
select * from MonHoc mh , SinhVien sv , DiemSV d where sv.MSSV = d.MSSV and  d.DIEM IS NULL 

-- cau 11: Liệt kê kết quả học tập của sv có mã số 170001. Hiển thị: MSSV,HoTen,TENMH,DIEM 
select sv.MSSV, sv.Hoten , mh.TenMh , d.Diem from SinhVien sv , DiemSV d, MonHoc mh where sv.MSSV = '170001' and mh.MaMH = d.MaMH
--	Câu 12: Liệt kê tên sinh viên và mã môn học mà sv đã đăng kí với điểm trên 7 điểm. 
select sv.Hoten, mh.MaMh , d.Diem from SinhVien sv , MonHoc mh , DiemSV d where sv.MSSV = d.MSSV and mh.MaMH = d.MaMH and d.DIEM > 7 

-- câu 13: Liệt kê môn học cùng số lợng sv đã học và có điểm. 

-- câu 13: Liệt kê môn học cùng số luowjng sv đã học và có điểm. 
select mh.TenMH as 'Tên môn học' , 


select count(sv.MSSV) from SinhVien sv , DiemSV d where sv.MSSV = d.MSSV and d.DIEM > 7 


--	câu 14: liệt kê tên sv và điểm trung bình của sv đó. 
  

select * from DiemSV  

select (Select sum(d.Diem) from DiemSV d where d.MSSV = sv.MSSV )/
(select count(d.MSSV) from DiemSV d where d.MSSV = sv.MSSV ),  * 
from SinhVIen sv ,  DiemSV dsv where sv.MSSV = dsv.MSSV 



-- câu 15:	Liệt kê tên sinh viên đạt điểm cao nhất của môn học 'Kỹ thuật lập trình'
 

select sv.HoTen as 'Tên' , d.DIEM as 'Điểm' from Sinhvien sv , DIemSV d where 
sv.MSSV = d.MSSV and d.MaMH = N'COS201' and 
(select max(Diem) from DiemSV where MaMH = 'COS201' ) = d.DIEM 

-- Câu 16: Liệt kê sinh viên đạt điểm trung bình cao nhất. 

select * from 