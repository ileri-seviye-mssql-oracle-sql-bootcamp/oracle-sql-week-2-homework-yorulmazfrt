--Y?l?n 4. aylar?nda en çok hangi amaçla kredi çekilmi?tir? ----Banking ?emas? için

 select max(COUNT(*)) from loans where month='4' group by purpose;

-- Bankan?n 50 ve ya 51 ya??nda kad?n mü?terilerinden ayn? isme sahip olan mü?terisi/mü?terileri var m?? Varsa isimleri neler?----Banking ?emas? için

SELECT first FROM clients where( select count(*)as adet from clients group by first);

--Hangi y?llarda kaç hesap aç?lm??t?r?----Banking ?emas? için

SELECT year,COUNT(*) as adet FROM accounts group by year;

-- ??lemlerin tiplerine göre toplam say?lar?n?n büyükten küçü?e s?ralamas? nedir?----Banking ?emas? için

SELECT COUNT(*)as adet FROM transactions group by type  order by adet desc ;

-- ??lemlerin tiplerine göre toplam tutarlar?n?n büyükten küçü?e s?ralamas? nedir?----Banking ?emas? için

SELECT  sum(amount),COUNT(*)as adet FROM transactions group by type  order by sum(amount) desc ;
