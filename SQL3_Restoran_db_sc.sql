create table products(
id serial primary key,
name varchar(50),
price numeric(12,2),
stock int,
category_name varchar(100)
);


insert into products (name,price,stock,category_name) values
('Tavuk Döner',150,25,'Dönerler'),
('Et Döner',370,10,'Dönerler'),
('Tavuk İskender',200,25,'Dönerler'),
('Et İskender',400,25,'Dönerler'),
('Ton Balıklı Pizza',375,20,'Pizzalar'),
('Peynirli Pizza',275,10,'Pizzalar'),
('Ton Balıklı Pizza',375,20,'Pizzalar'),
('Bol Malzemeli Pizza',400,25,'pizzalar'),
('Mercimek Çorbası',85,300,'Çorbalar'),
('Kelle Paça Çorbası',240,15,'Çorbalar'),
('Künefe',150,10,'Tatlılar'),
('Triliçe',100,25,'Tatlılar'),
('Antep Usulü Fıstıklı Baklava',450,10,'tatlılar'),
('Nohut Dürüm',70,150,'Dürümler'),
('Çilekli Magnolia',250,140,'Tatlılar');

--Pizzalar kategorisinde tüm ürünler
select * from products where category_name = 'Pizzalar' or category_name = 'pizzalar';


--Bir kategoride birden fazla ürün olabilir.
--Bir ürünün (bir tane) kategorisi olur.
--One to many (bire çok)



select category_name from products;

drop table products;

create table categories(
id serial primary key,
name varchar(50),
description varchar(200)
);


create table products(
id serial primary key,
name varchar(50),
price numeric(12,2),
stock int,
category_id bigint,
foreign key (category_id) references categories(id)
);


insert into categories(name, description) values
('Dürümler','Lezzeli dürümler için bizi tercih edin.'),
('Dönerler','Dönerin Adresi burda. A...'),
('Tatlılar','Yemekten sonra canınız tatlı mı çekti. O zaman doğru adresteniz. Dünyaca....');


insert into categories(name, description) values
('Kebaplar','Evrende en iyisi baskası yok. Kim mi o tabiiki kebap evreninde siyah kuşağı olan...'),
('Soslar','Kainatın en iyisi, rakipsiz, 7 kıtada hükmü geçen, yerin ve gökyüzünün en iyi sos uzmanı...'),
('İçecekler','Müessesimizin lezzetli içeceklerini deneyiniz.'),
('Pastalar','Evrenin en iyisi Pasta üstadı, Pastalar kralı, Altın kemer sahibi Sadullah Mert Bastacının lezzetli pastalarını deneyin '),
('Makarnalar',null),
('Pizzalar','Pizzayı Yasin Yıldırım ustadan yemeden geçmeyin');

select * from categories;

insert into products (name,price,stock,category_id) values
('Kalburabastı',350,100,3),
('Tavuk Dürüm',125,250,1),
('Et Döner',250,145,2),
('Çemen',75,1250,5),
('Fetuccini Alfredo',375,100,8);


INSERT INTO products(name, price, stock, category_id) VALUES
-- Dürümler (Kategori ID: 1)
('Adana Dürüm', 180.00, 200, 1),
('Urfa Dürüm', 180.00, 180, 1),
('Kuzu Şiş Dürüm', 220.00, 150, 1),
('Hatay Usulü Tavuk Dürüm', 160.00, 220, 1),
('Falafel Dürüm (Vejetaryen)', 140.00, 100, 1),

-- Dönerler (Kategori ID: 2)
('İskender Kebap (Porsiyon)', 300.00, 120, 2),
('Tavuk Döner Porsiyon', 200.00, 180, 2),
('Pilav Üstü Et Döner', 280.00, 130, 2),
('Tombik Et Döner', 190.00, 160, 2),

-- Tatlılar (Kategori ID: 3)
('Künefe', 180.00, 80, 3),
('Fıstıklı Baklava (Porsiyon)', 200.00, 100, 3),
('Fırın Sütlaç', 110.00, 90, 3),
('Profiterol', 140.00, 70, 3),
('Trileçe', 130.00, 85, 3),

-- Kebaplar (Kategori ID: 4)
('Adana Kebap (Porsiyon)', 280.00, 150, 4),
('Urfa Kebap (Porsiyon)', 280.00, 150, 4),
('Beyti Sarma', 320.00, 110, 4),
('Kuzu Şiş (Porsiyon)', 350.00, 100, 4),
('Patlıcanlı Kebap', 310.00, 90, 4),
('Ali Nazik', 330.00, 80, 4),
('Tavuk Şiş (Porsiyon)', 240.00, 140, 4),

-- Soslar ve Mezeler (Kategori ID: 5)
('Haydari', 90.00, 300, 5),
('Acılı Ezme', 85.00, 350, 5),
('Humus', 100.00, 250, 5),
('Ranch Sos (Ekstra)', 50.00, 500, 5),
('Barbekü Sos (Ekstra)', 50.00, 500, 5),

-- İçecekler (Kategori ID: 6)
('Ayran (300ml)', 50.00, 1000, 6),
('Kola (330ml)', 60.00, 1200, 6),
('Fanta (330ml)', 60.00, 900, 6),
('Sprite (330ml)', 60.00, 800, 6),
('Su (0.5L)', 20.00, 2000, 6),
('Sade Soda', 30.00, 700, 6),
('Şalgam Suyu (Acılı)', 55.00, 400, 6),
('Taze Sıkma Portakal Suyu', 120.00, 150, 6),
('Limonata (Ev Yapımı)', 100.00, 250, 6),

-- Pastalar (Kategori ID: 7)
('Çikolatalı Pasta (Dilim)', 190.00, 60, 7),
('Frambuazlı Cheesecake', 210.00, 50, 7),
('Mozaik Pasta', 160.00, 70, 7),
('Tiramisu', 190.00, 55, 7),
('San Sebastian Cheesecake', 220.00, 45, 7),

-- Makarnalar (Kategori ID: 8)
('Spaghetti Bolognese', 340.00, 110, 8),
('Penne Arrabbiata', 310.00, 120, 8),
('Kremalı Mantarlı Tavuklu Penne', 360.00, 100, 8),
('Spaghetti Carbonara', 370.00, 90, 8),

-- Pizzalar (Kategori ID: 9)
('Margherita Pizza (Orta)', 290.00, 100, 9),
('Karışık Pizza (Orta)', 350.00, 120, 9),
('Sucuklu Pizza (Orta)', 330.00, 110, 9),
('Vejetaryen Pizza (Orta)', 320.00, 90, 9),
('Dört Peynirli Pizza (Orta)', 360.00, 80, 9);




INSERT INTO products(name, price, stock, category_id)
-- Çeşitli Kebaplar (Kategori ID: 4)
('Fıstıklı Kebap', 340.00, 100, 4),
('Tavuk Kanat (1 Porsiyon)', 260.00, 180, 4),
('Kuzu Pirzola (4 Adet)', 450.00, 90, 4),
('Karışık Izgara (1.5 Porsiyon)', 480.00, 70, 4),
('Soğan Kebabı (Mevsimsel)', 300.00, 80, 4),
('Çökertme Kebabı', 360.00, 100, 4),

-- Çeşitli Dürümler (Kategori ID: 1)
('Ciğer Şiş Dürüm', 190.00, 130, 1),
('Kuzu Çöp Şiş Dürüm', 230.00, 160, 1),
('Köfte Dürüm', 170.00, 200, 1),
('Kaşarlı Tavuk Dürüm', 175.00, 190, 1),

-- Döner Çeşitleri (Kategori ID: 2)
('Ekmek Arası Et Döner (Somun)', 210.00, 150, 2),
('Ekmek Arası Tavuk Döner (Lavaş)', 140.00, 200, 2),
('Beğendili Kebap (Dönerden)', 340.00, 110, 2),

-- Pizza Çeşitleri (Kategori ID: 9)
('Ton Balıklı Pizza (Orta)', 340.00, 90, 9),
('Barbekü Soslu Tavuklu Pizza (Orta)', 360.00, 100, 9),
('Kavurmalı Pizza (Orta)', 380.00, 80, 9),
('Akdeniz Pizza (Beyaz Peynir, Zeytin)', 330.00, 95, 9),

-- Makarna Çeşitleri (Kategori ID: 8)
('Pesto Soslu Penne', 330.00, 110, 8),
('Deniz Mahsullü Linguini', 420.00, 75, 8),
('Kıymalı Lazanya', 390.00, 85, 8),
('Sade Tereyağlı Penne', 250.00, 130, 8),

-- Soslar ve Mezeler (Ara Sıcaklar dahil) (Kategori ID: 5)
('İçli Köfte (Adet)', 80.00, 200, 5),
('Fındık Lahmacun (Adet)', 60.00, 300, 5),
('Paçanga Böreği (Porsiyon)', 130.00, 100, 5),
('Babagannuş', 110.00, 280, 5),
('Atom (Acı Biberli Meze)', 100.00, 250, 5),
('Şakşuka', 95.00, 300, 5),
('Mantar Sote (Kaşarlı)', 150.00, 120, 5),

-- Tatlı Çeşitleri (Kategori ID: 3)
('İrmik Helvası (Dondurmalı)', 140.00, 90, 3),
('Ayva Tatlısı (Kaymaklı)', 160.00, 60, 3),
('Supangle', 130.00, 110, 3),
('Kazandibi', 120.00, 100, 3),
('Fıstıklı Katmer (2 Kişilik)', 250.00, 70, 3),

-- Pasta Çeşitleri (Kategori ID: 7)
('Islak Kek (Brownie)', 170.00, 80, 7),
('Limonlu Cheesecake', 200.00, 60, 7),
('Havuçlu Tarçınlı Kek', 150.00, 70, 7),
('Meyveli Turta (Dilim)', 180.00, 50, 7),

-- Sıcak ve Soğuk İçecekler (Kategori ID: 6)
('Türk Kahvesi', 70.00, 500, 6),
('Çay (Bardak)', 25.00, 1000, 6),
('Espresso', 80.00, 300, 6),
('Cappuccino', 100.00, 250, 6),
('Filtre Kahve', 90.00, 200, 6),
('Kutu Vişne Suyu', 55.00, 400, 6),
('Kutu Şeftali Suyu', 55.00, 400, 6),
('Meyveli Soda (Çeşitleri)', 40.00, 600, 6),
('Buzlu Çay (Şeftali)', 65.00, 350, 6),
('Buzlu Çay (Limon)', 65.00, 350, 6);

select * from products;

select * from categories;


--joinler
--inner join
--adı, fiyatı, stok miktarı, kategori adı

select products."name", products.price , products.stock , categories."name" from products inner join categories on products.category_id = categories.id;


insert into categories(name) values ('Ev Yemekleri'),('Aperatifler'),('Dondurmalar'),('Kokteyller(Alkolsüz)');

update categories set "name" = 'Drinks' where id = 6;

select 
products."name" as "Ürün Adı" ,
products.price as "Fiyatı" ,
products.stock as "Stok" ,
categories."name" as "Kategori Adı" ,
categories.description as "Kategori Açıklaması" 
from products inner join categories on products.category_id = categories.id ;






