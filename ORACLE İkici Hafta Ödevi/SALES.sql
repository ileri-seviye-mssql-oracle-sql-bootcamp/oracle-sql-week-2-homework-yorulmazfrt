-- Birim fiyat? 150'den büyük olan order_itemlar? bulunuz. ----Sales ?emas? için

SELECT * FROM order_items WHERE  unit_price > '150';

-- ??e al?m tarihi May?s 2016 olan çal??anlar? bulunuz. ----Sales ?emas? için*************

SELECT * FROM employees WHERE  hire_date LIKE TO_DATE('05/2016','MM/YYYY');

-- Ad? Charlie ya da Charlsie olan contactlar? bulunuz. ----Sales ?emas? için

SELECT * FROM  contacts WHERE first_name='Charlie' or first_name ='Charlsie';

-- Adet say?s? 10dan büyük 50den küçük envanterleri bulunuz. ----Sales ?emas? için

SELECT * FROM inventories where quantity>'10' and quantity<'50';

-- Bir sipari?te toplam 100.0000'den fazla ücret ödeyen emirler nedir? ----Sales ?emas? için

-- Manager'? olmayan çal??anlar hangileridir? ----Sales ?emas? için

SELECT * FROM employees where manager_id is NULL;

-- State bilgisi bo? olan lokasyonlar? bulunuz.----Sales ?emas? için

SELECT * FROM locations where state is NULL;

-- Durumu iptal olan ve sat?c?lar? olmayan emirler hangileridir? ----Sales ?emas? için

SELECT * FROM orders where salesman_id is NULL and status='Canceled';

-- Ocak 2016 ile Haziran 2016 aras?nda verilen sipari?ler hangileridir? ----Sales ?emas? için

-- Unvan? 'S' ile ba?lamayan çal??anlar? bulunuz. ----Sales ?emas? için

SELECT * FROM employees where job_title like 'S%';

-- Herhangi bir çe?it Intel Xeon ürünler hangileridir? ----Sales ?emas? için

SELECT * FROM products where product_name like '%Intel Xeon%';

-- ?smi 'C' ile ba?layan kontaklar hangileridir? Soyad?na göre alfabetik s?ra ile s?ralayal?m. ----Sales ?emas? için

SELECT * FROM contacts where first_name like 'C%';

-- Ürün ad? 'Asus' ile ba?layan ve liste fiyat? standart ücretinden küçük olan ürünleri bulunuz. ----Sales ?emas? için

SELECT * FROM products where product_name like 'Asus%' and list_price<standard_cost;

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales ?emas? için

-- Sipari? durumu 'Shipped'den farkl? olan mü?terilerin bilgilerini bulunuz. ----Sales ?emas? için

SELECT * FROM orders where status != 'Shipped';

-- Adet say?s? 100e e?it olan envanterlerin product bilgisini bulunuz. ----Sales ?emas? için

SELECT product_id FROM inventories where quantity = '100';

-- Beijing (8 numaral? warehouse)'da kaç farkl? envanter vard?r? ----Sales ?emas? için

SELECT count(*) FROM inventories where warehouse_id = '8';

-- Liste fiyati 1000 ile 3000 arasinda olan kaç product var?----Sales ?emas? için

SELECT * FROM products where list_price BETWEEN '1000' and '3000';
