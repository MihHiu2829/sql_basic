create database BaiThucHanh1 
go

use BaiThucHanh1
go 

create table TINH_TP
(
	MA_T_TP varchar(3) primary key not null  ,  
	TEN_T_TP nvarchar(20) , 
	DT float , se
	DS bigint , 
	MIEN nvarchar(10) 
)
create table BIENGIOI
(
MA_T_TP varchar(3)  not null ,

NUOC nvarchar(15) ,	
foreign key (MA_T_TP) references dbo.TINH_TP(MA_T_TP)  
)

create table LANGGIENG
(
	MA_T_TP varchar(3)  not null , 
	LG varchar(3) not null , 
	foreign key(MA_T_TP) references dbo.TINH_TP(MA_T_TP) , 
)

insert TINH_TP values ('AG',N'An Giang',3406,2142709,N'Nam') 
insert TINH_TP values ('BR',N'Bà Rịa-Vũng Tàu',1982,996682,N'Nam') 
insert TINH_TP values ('BC',N'Bắc Cạn',4857,293826,N'Bắc') 
insert TINH_TP values ('BG',N'Bắc Giang',3823,2142709,N'Bắc') 
insert TINH_TP values ('BL',N'Bạc Liêu',2526,856518,N'Nam') 
insert TINH_TP values ('BN',N'Bắc Ninh',808,1024472,N'Bắc') 
insert TINH_TP values ('BT',N'Bến Tre',2322,12255946,N'Nam') 
insert TINH_TP values ('BD',N'Bình Dương',2696,1481550,N'Nam') 
insert TINH_TP values ('BDI',N'An Giang',6025,1486465,N'Trung') 
insert TINH_TP values ('BP',N'Bình Phước',6857,873598,N'Nam') 
insert TINH_TP values ('BTH',N'Bình Thuận',7828,1167023,N'Trung') 
insert TINH_TP values ('CM',N'Cà Mau',5202,1206938,N'Nam') 
insert TINH_TP values ('CT',N'Cần Thơ',1390,1188435,N'Nam') 
insert TINH_TP values ('CB',N'Cao Bằng',6691,507183,N'Bắc') 
insert TINH_TP values ('DN',N'Đà Nẵng',1256,887435,N'Trung') 
insert TINH_TP values ('DL',N'Đắc Lắc',13085,1733624,N'Trung') 
insert TINH_TP values ('DNO',N'Đắc Nông',6515,489392,N'Trung') 
insert TINH_TP values ('DB',N'Điện Biên',9560,490306,N'Bắc') 
insert TINH_TP values ('DNA',N'Đồng Nai',5895,2486154,N'Nam') 
insert TINH_TP values ('GL',N'Gia Lai',15495,1274412,N'Trung') 
insert TINH_TP values ('HG',N'Hà Giang',7884,724537,N'Bắc') 
insert TINH_TP values ('HNA',N'Hà Nam',852,784045,N'Bắc') 
insert TINH_TP values ('HN',N'Hà Nội',3334.47,6451909,N'Bắc')
insert TINH_TP values ('HT',N'Hà Tây',2193,2047000,N'Bắc')
insert TINH_TP values ('HD',N'Hải Dương',1648,1705059,N'Bắc')
insert TINH_TP values ('HP',N'Hải Phòng',1526,1837173,N'Bắc')
insert TINH_TP values ('HAG',N'Hậu Giang',1608,757300,N'Nam')
insert TINH_TP values ('HB',N'Hòa Bình',4663,785217,N'Bắc')
insert TINH_TP values ('HY',N'Hưng Yên',923,1127903,N'Bắc')
insert TINH_TP values ('KH',N'Khánh Hòa',5198,1157604,N'Trung')
insert TINH_TP values ('KG',N'Kiên Giang',6268,1688248,N'Nam')
insert TINH_TP values ('KT',N'Kon TUm',9615,430133,N'Trung')
insert TINH_TP values ('LC',N'Lai Châu',9059,370502,N'Bắc')
----> đã insert 
insert TINH_TP values ('LD',N'Lâm Đồng',9765,1187574,N'Trung')
insert TINH_TP values ('LS',N'Lạng Sơn',8305,732515,N'Bắc')
insert TINH_TP values ('LCA',N'Lào Cai',6357,614595,N'Bắc')
insert TINH_TP values ('LA',N'Long An',4491,1436066,N'Nam')
insert TINH_TP values ('ND',N'Nam Định',1641,1828111,N'Bắc')
insert TINH_TP values ('NA',N'Nghệ An',16487,3113055,N'Trung')
insert TINH_TP values ('NB',N'Ninh Bình',1384,898999,N'Bắc')
insert TINH_TP values ('NT',N'Ninh Thuận',3360,564993,N'Trung')
insert TINH_TP values ('PT',N'Phú Thọ',3520,1316389,N'Bắc')
insert TINH_TP values ('PY',N'Phú Yên',5045,862231,N'Trung')
insert TINH_TP values ('QB',N'Quảng Bình',8051.80,846924,N'Trung')
insert TINH_TP values ('QN',N'Quảng Nam',10407,1422319,N'Trung')
insert TINH_TP values ('QNG',N'Quảng NGãi',5138,1216773,N'Trung')
insert TINH_TP values ('QNI',N'Quãng Ninh',5900,1144988,N'Bắc')
insert TINH_TP values ('QT',N'Quảng Trị',4745.70,597985,N'Bắc')
insert TINH_TP values ('ST',N'Sóc Trăng',3223,1292853,N'Nam')
insert TINH_TP values ('SL',N'Sơn La',14055,1076055,N'Bắc')
insert TINH_TP values ('TN',N'Tây Ninh',4030,1066513,N'Nam')
insert TINH_TP values ('TB',N'Thái Bình',1545,1781842,N'Bắc')
insert TINH_TP values ('TNG',N'Lai Châu',3543,1123116,N'Bắc')
insert TINH_TP values ('TH',N'Thanh Hóa',11116,3400595,N'Bắc')
insert TINH_TP values ('TTH',N'Thừa Thiên Huế',5053.99,1087579,N'Trung')
insert TINH_TP values ('TG',N'Tiền Giang',2367,1672271,N'Nam')
insert TINH_TP values ('HCM',N'TP Hồ CHí Minh',2095,7162864,N'Nam')
insert TINH_TP values ('TQ',N'Tuyên Quang',5868,724821,N'Bắc')
insert TINH_TP values ('VL',N'Vĩnh Long',1475,1024707,N'Nam')
insert TINH_TP values ('VP',N'Vĩnh Phúc',1371,999786,N'Bắc')
insert TINH_TP values ('YB',N'Yên Bái',6838,740387,N'Bắc')
select * from TINH_TP 

insert LANGGIENG values ('AG','DT')
insert LANGGIENG values ('AG','CT')
insert LANGGIENG values ('AG','KG')
insert LANGGIENG values ('BR','HCM')
insert LANGGIENG values ('BR','BTH')
insert LANGGIENG values ('BR','DNA')
insert LANGGIENG values ('DNA','BTH')
insert LANGGIENG values ('DNA','BR')
insert LANGGIENG values ('DNA','HCM')
insert LANGGIENG values ('BD','TN')
insert LANGGIENG values ('BD','DNA')
insert LANGGIENG values ('BD','BP')
insert LANGGIENG values ('BD','HCM')
insert LANGGIENG values ('BP','DL')
insert LANGGIENG values ('BP','BD')
insert LANGGIENG values ('BP','LD')
insert LANGGIENG values ('BP','DNA')
insert LANGGIENG values ('BL','KG')
insert LANGGIENG values ('BL','CT')
insert LANGGIENG values ('BL','CM')
insert LANGGIENG values ('BL','ST')
insert LANGGIENG values ('BL','TG')
insert LANGGIENG values ('BT','VL')
insert LANGGIENG values ('BT','TV')
insert LANGGIENG values ('BT','HCM')
insert LANGGIENG values ('BT','CM')
insert LANGGIENG values ('CM','KG')
insert LANGGIENG values ('CM','BL')
insert LANGGIENG values ('CT','AG')
insert LANGGIENG values ('CT','DT')
insert LANGGIENG values ('CT','VL')
insert LANGGIENG values ('CT','KG')
insert LANGGIENG values ('CT','BL')
insert LANGGIENG values ('CT','ST')
insert LANGGIENG values ('DT','AG')
insert LANGGIENG values ('DT','LA')
insert LANGGIENG values ('DT','TG')
insert LANGGIENG values ('HAG','CT')
insert LANGGIENG values ('HAG','ST')
insert LANGGIENG values ('HAG','VL')
insert LANGGIENG values ('HAG','KG')
insert LANGGIENG values ('HAG','BL')
insert LANGGIENG values ('HAG','TN')
insert LANGGIENG values ('LA','TN')
insert LANGGIENG values ('LA','TG')
insert LANGGIENG values ('LA','DT')
insert LANGGIENG values ('LA','HCM')
insert LANGGIENG values ('HCM','BD')
insert LANGGIENG values ('HCM','TN')
insert LANGGIENG values ('HCM','DNA')
insert LANGGIENG values ('HCM','BR')
insert LANGGIENG values ('HCM','LA')
insert LANGGIENG values ('HCM','TG')
insert LANGGIENG values ('TG','LA')
insert LANGGIENG values ('TG','DT')
insert LANGGIENG values ('TG','BT')
insert LANGGIENG values ('TG','VL')
insert LANGGIENG values ('TN','BD')
insert LANGGIENG values ('TN','BP')
insert LANGGIENG values ('TN','LA')
insert LANGGIENG values ('TN','HCM')
insert LANGGIENG values ('BTH','DNA')

Select * from LANGGIENG


insert BIENGIOI values ('AG','CPC') 
insert BIENGIOI values ('DL','CPC') 
insert BIENGIOI values ('DT','CPC') 
insert BIENGIOI values ('GL','CPC') 
insert BIENGIOI values ('KG','CPC') 
insert BIENGIOI values ('LA','CPC') 
insert BIENGIOI values ('BP','CPC') 
insert BIENGIOI values ('TN','CPC') 
insert BIENGIOI values ('GL','LAO') 
insert BIENGIOI values ('LC','LAO') 
insert BIENGIOI values ('NT','LAO') 
insert BIENGIOI values ('BT','LAO') 
insert BIENGIOI values ('CB','TQ') 
insert BIENGIOI values ('lC','TQ') 

delete dbo.BIENGIOI
select * from BIENGIOI

use BaiThucHanh1
go 

--1.	Xuất ra tên tỉnh, TP cùng với dân số của tỉnh, TP: 
---> a. Có diện tích >= 5000km
---> B. Có diện tích >= [input] (Sv nhâp một só bất kỳ từ bàn phím. 

Select TEN_T_TP 'Tinh thanh' from TINH_TP where dt >= 5000

Select TEN_T_TP 'Tinh Thanh' from TINH_TP where DT>=12000

--2.	Xuất ra tên tỉnh,TP cùng với diện tích của tỉnh,TP:

Select TEN_T_TP 'Tinh Thanh', DT 'Dien Tich' from TINH_TP 

--3.	Thuộc miền bắc.
Select * from TINH_TP where MIEN = N'Bắc'

--4.	Thuộc miền Input
Select * from TINH_TP where MIEN=N'Nam' 

--5.	 Xuất ra các Tên Tỉnh, TP biên giớii thuộc miền [Input[ (Sv cho mọt miền bất kỳ). 
select TEN_T_TP from TINH_TP T, BIENGIOI B where T.MA_T_TP = B.MA_T_TP 

--6.	Cho biết diện tíhc trung bình của các tỉnh,TP (Tổng DT/ tổng số tỉnh _TP) . 
select (sum(DT)/count(MA_T_TP)) from TINH_TP 

--7.	Cho biết dân số cùng với tên tỉnh của các tỉnh,TP có diện tích > 7000km2 
select TEN_T_TP 'Tỉnh Thành', DS 'Dân Số' from TINH_TP where DT > 7000 

--8.	Cho biết dân số cùng với tên tỉnh của các tỉnh miền Bắc. 
select DS 'Dân số', TEN_T_TP 'Tên tỉnh' from TINH_TP where MIEN = N'Bắc'

--9.	Cho biết mã các nước là biên giới của các tỉnh miền Nam. 
select NUOC 'Nước' from BIENGIOI B,TINH_TP T where B.MA_T_TP = T.MA_T_TP and T.MIEN = N'Nam'

--10	Cho biết diện tích trung bình của các tỉnh,TP. 
select AVG(DT) from TINH_TP 

--11	Cho biết mật độ dân số(DS?DT) cùng với tên tỉnh,TP của tất cả các tỉnh,TP.
select (DS/DT) 'Mật độ', TEN_T_TP 'Tỉnh'  from TINH_TP 

--12	Cho biết tên các tỉnh,tp Láng giềng của tỉnh LONG AN.  
select TEN_T_TP 'Láng GIềng' from TINH_TP T, LANGGIENG L where L.MA_T_TP = 'LA' and L.LG = T.MA_T_TP

--13	Cho biết số lượng tỉnh TP giáp với CPC. 
select count(TEN_T_TP) from TINH_TP T , BIENGIOI B where T.MA_T_TP = B.MA_T_TP and B.NUOC ='CPC'

--14	Cho biết tên tỉnh TP có diện tích lớn nhất.
select TEN_T_TP from TINH_TP where DT = (select max(DT) from TINH_TP )

--15	Cho biết tỉnh,TP có mật độ DS đông nhất.
select TEN_T_TP from TINH_TP  where (  ( ( max(DS)/max(DT))) = (DS/DT) )

--16	Cho biết tên, tỉnh TP giáp với hai nước biến giới khác nhau
select T.TEN_T_TP from TINH_TP T, BIENGIOI B where T.MA_T_TP = B.MA_T_TP and ((select count(NUOC) from BienGIoi G where G.MA_T_TP = T.MA_T_TP) = 2 )
(select count(NUOC) from BIENGIOI where MA_T_TP = 'GL')


--17	Cho biết danh sách các miền cùng với các tỉnh, TP trong các miền đó.
select MIEN, TEN_T_TP from TINH_TP where MIEN = N'Nam' 
select MIEN, TEN_T_TP from TINH_TP where MIEN = N'Bắc' 
select MIEN, TEN_T_TP from TINH_TP where MIEN = N'Trung' 

--18	Cho biết tên, tỉnh TP có nhiều Láng Giềng nhất.
 select (MAX(select(select count(LG) from Langgieng L  where L.MA_T_TP = LL.MA_T_TP) from LangGIeng LL)) from LANGGIENG 

 --19 Cho biết tên tỉnh, TP có diện tích nhở hơn diện tích TB của tp .
 select TEN_T_TP from TINH_TP where DT < (select avg(t.dt) from  TINH_TP t) 

 --20	Cho biết tên những tỉnh,TP giáp với các tỉnh,TP ở miền 'Nam' và không phải là tỉnh miền Nam. 
 select * from TINH_TP T , Langgieng L where T.MIEN = N'Trung' and L.LG = (select T.MA_T_TP where T.MIEN = N'Nam') 
