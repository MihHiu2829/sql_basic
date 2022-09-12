---> Unique: duy nhất -> trong toàn bọ bảng. trường nào có từ khóa Unique thì không thể có 2 giá trị trung nhau
---> Not Null: Trường đó không được phép null 
---> Dèault: giá trị mặc định của trường đó nếu không gán giá trị insert 

create table testPrimaryKey1 
(
ID int unique not null default 1 ,  
Nname nvarchar(100) default N'Doan Minh Hieu'    
)




---> cập nhật 1 khóa primary key khi đã tạo bảng. 
Alter table dbo.testPrimaryKey1 add primary key (ID) 



--> tajo primary ket trong banrg khoong phai ngay khi khai báo
create table testPrimaryKey2 
(
ID int unique not null ,  
Nname nvarchar(100) default N'Doan Minh Hieu'    
primary key (ID)
)



--> tạo primary key ngay trong bảng mà đặt tên cho key đó. 
create table testPrimaryKey3 
(
ID int unique not null ,  
Nname nvarchar(100) default N'Doan Minh Hieu'    
		constraint pk_test3 -- sau này xóa key cho dễ.
		primary key (id)
)




---> tạo primary key sau khi tạo bảng và đặt tên cho key đó. 
create table testPrimaryKey4
(
ID int  not null ,   --> trường nào muốn set primry key phải để not null 
Nname nvarchar(100) default N'Doan Minh Hieu'    
)
alter table dbo.testPrimaryKey4 add constraint PK_test4 primary key (ID)  




---------> khóa chsinh có 2 trường. 
create table testPrimaryKey5 
(
ID01 int not null ,  
ID02 int not null ,  
Nname nvarchar(100) default N'Doan Minh Hieu' 
primary key (ID01,ID02)   		
)




go 
INSERT  dbo.testPrimaryKey1(ID) VAlues (0)
insert  dbo.testPrimaryKey1(ID,Nname) values (1,N'Nguyen Thanh Lam') 
insert  dbo.testPrimaryKey1(ID) values (2) 
insert  dbo.testPrimaryKey1(ID,Nname) values (3,N'Nguyen Ngoc Quyen') 
insert  dbo.testPrimaryKey1( ID,Nname) values (4,N'Pham THi Thanh Truc')  