create database QuanLyDiemThi;
use quanlydiemthi;
create table hocsinh(
mahs varchar(20) primary key,
tenhs varchar(50),
ngaysinh datetime,
lop varchar(20),
gt varchar(20)
);
create table monhoc(
mamh varchar(20) primary key,
tenmh varchar(50),
magv varchar(20)
);
create table giaovien(
magv varchar(20) primary key,
tengv varchar(50) ,
sdt int unique
);
create table bangdiem(
mahs varchar(20),
mamh varchar(20),
diemthi int,
ngaykt datetime
);
alter table bangdiem add primary key(mahs,mamh);
alter table bangdiem add foreign key(mahs) references hocsinh(mahs);
alter table bangdiem add foreign key(mamh) references monhoc(mamh);
alter table monhoc add constraint fk_magv foreign key (magv) references giaovien(magv);