--Y?l?n 4. aylar?nda en �ok hangi ama�la kredi �ekilmi?tir? ----Banking ?emas? i�in

 select max(COUNT(*)) from loans where month='4' group by purpose;

-- Bankan?n 50 ve ya 51 ya??nda kad?n m�?terilerinden ayn? isme sahip olan m�?terisi/m�?terileri var m?? Varsa isimleri neler?----Banking ?emas? i�in

SELECT first FROM clients where( select count(*)as adet from clients group by first);

--Hangi y?llarda ka� hesap a�?lm??t?r?----Banking ?emas? i�in

SELECT year,COUNT(*) as adet FROM accounts group by year;

-- ??lemlerin tiplerine g�re toplam say?lar?n?n b�y�kten k���?e s?ralamas? nedir?----Banking ?emas? i�in

SELECT COUNT(*)as adet FROM transactions group by type  order by adet desc ;

-- ??lemlerin tiplerine g�re toplam tutarlar?n?n b�y�kten k���?e s?ralamas? nedir?----Banking ?emas? i�in

SELECT  sum(amount),COUNT(*)as adet FROM transactions group by type  order by sum(amount) desc ;
