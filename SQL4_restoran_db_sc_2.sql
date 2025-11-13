select * from categories;
select * from products;

-- avg, sum, min, max, count

select avg(price) from products;
select sum(price) as "Ürünlerin Fiyat Toplamı" from products;
select min(stock) as "En Düşük Stok Toplamı" from products;

select max(stock) as "En Yüksek Stok Toplamı" from products;

select count(*) as "Ürün Sayısı" from products;

select
Avg(price) as "Ürünlerin Fiyat Ortalaması",
sum(price) as "Ürünlerin Fiyat Toplamı",
min(stock) as "En Düşük Stok Toplamı",
max(stock) as "En Yüksek Stok Toplamı",
count(*) as "Ürün Sayısı" from products;

--KATEGORİ İD ALANI : 3        ÜRÜN aDETLERİ:10
--sELECT KOLON1, KOLON2,...., AGGREGATE_FUNCTION FROM tablo_adi group by kolon1, kolon2....;

--kategori id lerine göre kaç tane ürün var ise gruplayınız.

ELECT category_id,  count(*) as "Ürün Sayısı", avg(price) as "Ürünlerin Ortalama Fiyatı" from products group by category_id;


SELECT   c.name as "Kategori Adı", products.name as "Ürün Adı"
FROM products
LEFT JOIN categories c  on products.category_id = c.id;


SELECT   c.name as "Kategori Adı", products.name as "Ürün Adı"
FROM products
RIGHT JOIN categories c  on products.category_id = c.id;


SELECT   c.name as "Kategori Adı", products.name as "Ürün Adı"
FROM products
INNER JOIN categories c  on products.category_id = c.id;


SELECT   c.name as "Kategori Adı",  count(products.id) as "Ürün Sayısı", avg(products.price) as "Ürünlerin Ortalama Fiyatı"
FROM products
INNER JOIN categories c  on products.category_id = c.id
GROUP BY "Kategori Adı";


SELECT products.category_id as "Kategori Id",  c.name as "Kategori Adı",  count(products.id) as "Ürün Sayısı", avg(products.price) as "Ürünlerin Ortalama Fiyatı"
FROM products
INNER JOIN categories c  on products.category_id = c.id
GROUP BY "Kategori Id","Kategori Adı";

-- ürünleri kategorilerine grupladıktan sonra stok miktarlarının birim fiyatları ile çarpıp kd oranını ekleyip oluşam fiyaltara göre gruplayınız.
select * from products where category_id=4;

select
c."name" as "Kategori Adı", sum(products.price * products.stock * 1.2) as "Ürünlerin Toplam Gelir Beklentisi" 
from products inner join categories c on c.id = products.category_id
group by "Kategori Adı" order by "Ürünlerin Toplam Gelir Beklentisi" desc;














