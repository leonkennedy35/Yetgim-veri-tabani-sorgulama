-- select kolon1, kolon2, kolon3,.... from tabloadi;

select ad, soyad, telefon_numarasi, id from students;


-- tüm kolonlarıyla birlikte ilk 5 kayıt listelensin
select * from students limit 5;

select * from teachers;

insert into teachers(ad,soyad,email,salary,count_lesson,branch) values
('Buse','Qubit','qubitbuse@gmail.com',255000,3,'Full Stack Development'),
('Uzay','Qubit','qubituzay@gmail.com',25000,1,'Mobile Development'),
('Sanal','Qubit','qubitsanal@gmail.com',15000,2,'Ui Ux Development'),
('Evren','Qubit','qubitevren@gmail.com',35000,2,'Mobile Development'),
('Enes','Zeytin','eneszeytin@gmail.com',60000,2,'Platform Engineering'),
('Furkan','Yurt','furkanyurt@gmail.com',55000,3,'Industrial Engineering'),
('Sevcan','Arığ','sevcanarig@gmail.com',65000,3,'Backend Development'),
('Begüm','Geçer','begumgecer@gmail.com',75000,3,'Frontend Development'),
('Gizem','Bayındır','gizembayindir@gmail.com',250000,4,'Ai Development'),
('Özlem','Sağır','ozlemsagir@gmail.com',350000,3,'Frontend Development'),
('Zehra','Özdemir','zehraözdemir@gmail.com',125000.75,3,'Data Scientist'),
('Yasin','Yıldırım (Docker)','yasinyildirim@gmail.com',69547,3,'Devops'),
('Elif Melike','Özçay','elifmelikeozcay@gmail.com',50000,1,'AI Development'),
('Ahmet Eren','Selvi','ahmeteren@gmail.com',95000,1,'QA Test Engineer');


select ad as "Ad",
soyad as "Soyad",
email as "E-Mail",
salary as "Maaş",
count_lesson as "Ders Sayısı",
branch as "Branş",
created_at as "Oluşturulma Tarih"
from teachers;

--Filtreleme İşlemleri
-- select kolonlar from tablo_adı where kolon_adi kosul

-- Karşılaştırma Operatörleri;
-- > , < , <= , >= , = , != ,

-- öğretmenler tablosu içerisinde maaşı 80000 den fazla olan tüm öğretmenler.

select * from teachers where salary > 80000;

-- öğretmenler tablosu içerisinde branşı Mobile Development olan öğretmenler.

select * from teachers where branch = 'Mobile Development';

-- öğretmenler tablosu içerisinde branşı Ui Ux Development olmayan öğretmenler.

select * from teachers where branch != 'Ui Ux Development';

select * from teachers where branch <> 'Ui Ux Development';

-- öğretmenler tablosu içerisinde 2'den fazla ders veren öğretmenlerin şu formatta çıktısını veriniz
-- Tam Adı , Ders Sayısı , Maaş

select concat(ad,' ',soyad) as "Tam Adı", count_lesson as "Ders Sayısı", salary as "Maaş" from teachers where count_lesson > 2;

-- IN , ILIKE , LIKE komutları

-- öğretmenler tablosu içerisinde branşları Mobile Development , Frontend Development ve Backend Development olan öğretmenler listeleyin.

select * from teachers where branch in ('Mobile Development', 'Frontend Development', 'Backend Development');

-- barnşın sonunda development ile biten bütün öğretmenlerin listesi
-- a ile başlıyorsa 'a%', a ile bitiyorsa '%a', a herhangi bir yerdeyse '%a%'
-- ilike büyük küçük harfe duyarsız, like ise büyük küçük harfe duyarlıdır

select * from teachers where branch like '%Development%';
select * from teachers where branch ilike '%development%';


-- öğretmenler tablosu içerisinde email alanları qubit ile başlayan tüm öğretmenleri listeleyiniz.

select * from teachers where email like '%qubit%';


-- öğretmenler tablosu içerisinde soyisminde öz ile başlayan yada öz geçen tüm öğretmenleri listeleyiniz.

select * from teachers where soyad ilike '%öz%';


-- öğretmenler tablosu içerisinde Ad ve soyadı tam adı şeklinde yazdırıp, ad ve soyad birlikteyken içinde öz kelimesi arayan liste.
select concat(ad,' ',soyad) as "Tam Adı", salary, branch from teachers where concat(ad,' ',soyad) ilike '%öz%';


-- between komutu
-- öğretmenler tablosu içerisinde maaş aralığı 35000 ile 85000 arasındaki tüm öğretmenler

select * from teachers where salary between 35000 and 85000;

-- öğretmenler tablosu içerisinde maaşı 35000 185000 arası ve branşı mobile development olan öğretmenler.

select * from teachers where (salary between 35000 and 185000) and (branch = 'Mobile Development'); 
select * from teachers where (salary between 35000 and 185000) or (branch = 'Mobile Development');

-- Mantıksal Operatörler
-- and or not

-- öğretmenler tablosu içerisinde email içinde "en" geçen(1) veya maaş aralığı 55000, 100000 arasında olan ve almış olduğu ders sayısı 2den fazla.

select * from teachers where (email like '%en%') or (salary between 55000 and 100000 and count_lesson >2);

-- branşı spss olmayn öğretmenleri listele

select * from teachers where not branch = 'SPSS';


--telefon numarası olmayan öğrenciler
select * from students where telefon_numarasi is null;
--telefon numarası olan öğrenciler
select * from students where telefon_numarasi is not null;
select * from students where not telefon_numarasi is null;

create table lessons(

id serial primary key,
name varchar(100) unique not null

);


insert into lessons(name) values('Fizik'),
('Kimya'),('Biyoloji'),('Matematik'),('Web Programlama'),('Mobil Programlama'),('Selammm'),('Merhaba');

select * from lessons;

-- Silme işlemi 
-- Delete from tablo_adı koşul. (Tablo içerisinde ki tüm verileri siler eğer filtre yoksa)
delete from lessons;
-- bir tabloyu tamamen kaldırma scripti
drop table lessons;

-- Tablo içerisini tamamen boşaltır
truncate lessons;

-- Dersler tablosundan Merhaba Dersini siliniz.
delete from lessons where name = 'Merhaba';


select * from lessons;
select * from students;


-- Öğrenciler tablosu içerisinde Ömer Faruk Adlı kullanıcıyı siliniz.

delete from students where ad = 'Ömer Faruk';


delete from students where id = '13';

--güncelleme işlemleri
--update tablo_adı set kolon1 = değer1, kolon2 = değer2 koşul

update students set ad = 'Ömer', soyad = 'Doğan';
truncate students;
truncate students restart identity;

insert into students(ad,soyad,telefon_numarasi) values
('Elif Melike','Özcay','05061234567'),
('Dila Yeliz','Yıldırım',null),
('Ömer Faruk','Polat',null),
('Selim','Doğan',null),
('Sevcan','Arığ',null);

select * from students;
update students set ad='SELİM', telefon_numarasi = '05051234567' where id = 18;



-- Alter table
-- Tablonun yapısını güncelleme
-- alter table tablo_adi yapılacak işlem

select * from lessons;

-- Kolon ekleme
-- Dersler tablosu içerisinde aktiflik kolonu olsun , dersin maksimum sayısını da tutan bilgiler içersin


alter table lessons add column aktif boolean default true, add column max_student_count int;

--öğrenciler tablosunda telefon numarası sütununu silmek
alter table students drop column telefon_numarasi

select * from teachers;

--Kolon ismi güncelleme
alter table teachers rename column salary to maas;


--Kolon tipi güncelleme
--count lesson sütununun tipi float olsun (orjinali integer-int)
alter table teachers alter column count_lesson type FLOAT;
alter table teachers alter column count_lesson type INT;


--kısıt kaldırma (unique, not null etc)
alter table lessons drop constraint lessons_name_key;

create table clubs(

id serial primary key,
name varchar(100) not null,
description text

);

--klüpler tablosunda name alanı unique olmalıdır, tablo dizynında göz ardı edilmiştir.
alter table clubs add constraint uniq_name_check unique(name);














