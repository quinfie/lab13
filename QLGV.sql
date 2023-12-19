create database QLGV
use QLGV

create table COSO
(
	macoso char(6) not null primary key,
	tencoso nvarchar(50)
)

create table DONVI
(
	madonvi char(6) not null primary key,
	tendonvi nvarchar(50),
	macoso char(6) not null,
	constraint fk_donvi_coso foreign key (macoso) references coso(macoso)
)

create table GV
(
	magv char(6) not null primary key,
	hoten nvarchar(50), 
	sdt varchar(11),
	ghichu nvarchar(50),
	madonvi char(6) not null,
	constraint fk_gv_donvi foreign key (madonvi) references donvi(madonvi)
)

insert into coso values ('cs01', N'Cơ sở Tân Phú'),
('cs02', N'Cơ sở Tân Bình')
insert into donvi values ('dv01', N'Đơn vị Hoàng Hoa Thám', 'cs02'),
('dv02', N'Đơn vị Công thương', 'cs01')
insert into gv values ('gv01', N'Nguyễn Thị Thu', '0978451629', null, 'dv01'),
('gv02', N'Trần Văn Nghĩa', '0859145829', null, 'dv02')