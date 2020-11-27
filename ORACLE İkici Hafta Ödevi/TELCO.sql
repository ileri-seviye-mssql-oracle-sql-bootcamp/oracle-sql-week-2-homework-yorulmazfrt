-- Kotas? limitsiz olan ürünler hangileridir? ----Telco ?emas? için

SELECT * FROM TELCO.PRODUCT WHERE quota='LIMITLESS';

-- Statüsü 'Initial' olan mü?terileri bulunuz. ----Telco ?emas? için

SELECT * FROM customer where status='INITIAL';

-- ?ehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco ?emas? için

SELECT * FROM address where city='Istanbul';

-- Birincil ileti?im bilgisi olmayan telefon numaralar?n? bulunuz. ----Telco ?emas? için

-- Hesap ödeme ?ekli nakit olmayan hesaplar hangileridir? ----Telco ?emas? için

SELECT * FROM account where payment_type != 'CASH';

-- Statüsü deaktif olan mü?terilerin ba?lant? kesim tarihleri nedir? ----Telco ?emas? için

SELECT ?d,disconnection_date FROM customer where status='DEACTIVE';

-- Hesap kapan?? tarihi dolu olan hesaplar? bulunuz. ----Telco ?emas? için

SELECT * FROM account where account_closing_date is not NULL;

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco ?emas? için

SELECT account_number,e_bill_email FROM account where e_bill_email is not null;

-- Sözle?me biti? tarihi 1 Ocak 2000'den büyük , 1 Ocak 2005'ten küçük olan sözle?meleri bulunuz. ----Telco ?emas? için

SELECT * FROM ordering where order_end_date > to_date('01/01/2000') and  order_end_date < to_date('01/01/2005');

-- 2005 y?l?ndan önce yap?lan ve hala aktif olan subscriptionlar hangileridir? ----Telco ?emas? için

SELECT * FROM subscription where create_date < to_date('2005','YYYY') and status = 'ACTIVE';

-- Sözle?me ba?lang?ç tarihi Ocak 2010'dan büyük olan sözle?meleri bulunuz. ----Telco ?emas? için

SELECT * FROM ordering where order_start_date > to_date('2010','YYYY');

-- ?smi E ile ba?layan mü?terileri bulunuz. ----Telco ?emas? için

SELECT * FROM customer where LOWER(name) like 'e%';

-- Product tipi 'DSL' ile biten ürünleri bulunuz. ----Telco ?emas? için

SELECT * FROM  product where product_type like '%DSL';

-- ?sminde ya da soyisminde 'ü' harfi geçen mü?teriler hangileridir? ----Telco ?emas? için

SELECT * FROM  customer where LOWER(name) like '%ü%' or LOWER(surname) like '%ü%';

-- Ülke kodu UK ve AU olan adresleri bulunuz.----Telco ?emas? için

SELECT * FROM  address where country_cd='UK' or country_cd='AU';

-- Taahhüt süresi 240 ve 120 ay olan bütün sözle?meleri bulmak istiyoruz.----Telco ?emas? için

-- Sözle?me alt tipi MAIN olan kaç tane sözle?me vard?r?----Telco ?emas? için

SELECT count(*) FROM  subs_lifecycle  where agreement_type = 'MAIN';

-- Deaktif mü?terilerin say?s?n? bulunuz.----Telco ?emas? için

SELECT count(*) FROM customer where status='DEACTIVE';

-- ?leti?im tipi olarak email ve statusu kullan?mda olan kaç mü?teri var?----Telco ?emas? için

SELECT * FROM contact where cnt_type='EMAIL' and status = 'USED';