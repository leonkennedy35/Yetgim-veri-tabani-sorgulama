create table students(
id serial primary key,
ad varchar(100) not null,
soyad varchar(100) not null,
telefon_numarasi varchar(50)
);


create table teachers(
id serial primary key,
ad varchar(100) not null,
soyad varchar(100) not null,
email varchar(150) unique,
salary numeric(15,2) default 1000 check(salary>=0),
count_lesson int,
branch varchar(100) not null,
created_at timestamp default current_timestamp 
);

--Veri ekleme
--insert into tablo_adı(kolon1,kolon2,.....) values(deger1,deger2...)
insert into students(ad,soyad,telefon_numarasi) values('Buse','Doğan','05071234567');

insert into students(ad,soyad) values ('Yasin','YILDIRIM')

--ÇOKLU EKLEME

insert into students(ad,soyad,telefon_numarasi) values
('Elif Melike','Özcay','05061234567'),
('Dila Yeliz','Yıldırım',null),
('Ömer Faruk','Polat',null),
('Selim','Doğan',null),
('Sevcan','Arığ',null)

insert into teachers(ad,soyad,email,salary,count_lesson,branch) values
('Yasin','YILDIRIM','ysnyldrm73@gmail.com',5000,8,'EXCEL')


insert into teachers(ad, soyad, email,salary,count_lesson,branch) values
('Sadullah Mert','Bastacı','sadullah@gmail.com',155000,3,'SPSS')


insert into teachers(ad, soyad, email,count_lesson,branch) values
('Sadullah Mert 1','Bastacı','sadullah1@gmail.com',3,'SPSS')



