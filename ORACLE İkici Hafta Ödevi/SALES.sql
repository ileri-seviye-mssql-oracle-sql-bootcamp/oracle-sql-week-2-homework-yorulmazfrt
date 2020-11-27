-- Birim fiyat? 150'den b�y�k olan order_itemlar? bulunuz. ----Sales ?emas? i�in

SELECT * FROM order_items WHERE  unit_price > '150';

-- ??e al?m tarihi May?s 2016 olan �al??anlar? bulunuz. ----Sales ?emas? i�in*************

SELECT * FROM employees WHERE  hire_date LIKE TO_DATE('05/2016','MM/YYYY');

-- Ad? Charlie ya da Charlsie olan contactlar? bulunuz. ----Sales ?emas? i�in

SELECT * FROM  contacts WHERE first_name='Charlie' or first_name ='Charlsie';

-- Adet say?s? 10dan b�y�k 50den k���k envanterleri bulunuz. ----Sales ?emas? i�in

SELECT * FROM inventories where quantity>'10' and quantity<'50';

-- Bir sipari?te toplam 100.0000'den fazla �cret �deyen emirler nedir? ----Sales ?emas? i�in

-- Manager'? olmayan �al??anlar hangileridir? ----Sales ?emas? i�in

SELECT * FROM employees where manager_id is NULL;

-- State bilgisi bo? olan lokasyonlar? bulunuz.----Sales ?emas? i�in

SELECT * FROM locations where state is NULL;

-- Durumu iptal olan ve sat?c?lar? olmayan emirler hangileridir? ----Sales ?emas? i�in

SELECT * FROM orders where salesman_id is NULL and status='Canceled';

-- Ocak 2016 ile Haziran 2016 aras?nda verilen sipari?ler hangileridir? ----Sales ?emas? i�in

-- Unvan? 'S' ile ba?lamayan �al??anlar? bulunuz. ----Sales ?emas? i�in

SELECT * FROM employees where job_title like 'S%';

-- Herhangi bir �e?it Intel Xeon �r�nler hangileridir? ----Sales ?emas? i�in

SELECT * FROM products where product_name like '%Intel Xeon%';

-- ?smi 'C' ile ba?layan kontaklar hangileridir? Soyad?na g�re alfabetik s?ra ile s?ralayal?m. ----Sales ?emas? i�in

SELECT * FROM contacts where first_name like 'C%';

-- �r�n ad? 'Asus' ile ba?layan ve liste fiyat? standart �cretinden k���k olan �r�nleri bulunuz. ----Sales ?emas? i�in

SELECT * FROM products where product_name like 'Asus%' and list_price<standard_cost;

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales ?emas? i�in

-- Sipari? durumu 'Shipped'den farkl? olan m�?terilerin bilgilerini bulunuz. ----Sales ?emas? i�in

SELECT * FROM orders where status != 'Shipped';

-- Adet say?s? 100e e?it olan envanterlerin product bilgisini bulunuz. ----Sales ?emas? i�in

SELECT product_id FROM inventories where quantity = '100';

-- Beijing (8 numaral? warehouse)'da ka� farkl? envanter vard?r? ----Sales ?emas? i�in

SELECT count(*) FROM inventories where warehouse_id = '8';

-- Liste fiyati 1000 ile 3000 arasinda olan ka� product var?----Sales ?emas? i�in

SELECT * FROM products where list_price BETWEEN '1000' and '3000';
