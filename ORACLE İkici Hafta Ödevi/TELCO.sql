-- Kotas? limitsiz olan �r�nler hangileridir? ----Telco ?emas? i�in

SELECT * FROM TELCO.PRODUCT WHERE quota='LIMITLESS';

-- Stat�s� 'Initial' olan m�?terileri bulunuz. ----Telco ?emas? i�in

SELECT * FROM customer where status='INITIAL';

-- ?ehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco ?emas? i�in

SELECT * FROM address where city='Istanbul';

-- Birincil ileti?im bilgisi olmayan telefon numaralar?n? bulunuz. ----Telco ?emas? i�in

-- Hesap �deme ?ekli nakit olmayan hesaplar hangileridir? ----Telco ?emas? i�in

SELECT * FROM account where payment_type != 'CASH';

-- Stat�s� deaktif olan m�?terilerin ba?lant? kesim tarihleri nedir? ----Telco ?emas? i�in

SELECT ?d,disconnection_date FROM customer where status='DEACTIVE';

-- Hesap kapan?? tarihi dolu olan hesaplar? bulunuz. ----Telco ?emas? i�in

SELECT * FROM account where account_closing_date is not NULL;

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco ?emas? i�in

SELECT account_number,e_bill_email FROM account where e_bill_email is not null;

-- S�zle?me biti? tarihi 1 Ocak 2000'den b�y�k , 1 Ocak 2005'ten k���k olan s�zle?meleri bulunuz. ----Telco ?emas? i�in

SELECT * FROM ordering where order_end_date > to_date('01/01/2000') and  order_end_date < to_date('01/01/2005');

-- 2005 y?l?ndan �nce yap?lan ve hala aktif olan subscriptionlar hangileridir? ----Telco ?emas? i�in

SELECT * FROM subscription where create_date < to_date('2005','YYYY') and status = 'ACTIVE';

-- S�zle?me ba?lang?� tarihi Ocak 2010'dan b�y�k olan s�zle?meleri bulunuz. ----Telco ?emas? i�in

SELECT * FROM ordering where order_start_date > to_date('2010','YYYY');

-- ?smi E ile ba?layan m�?terileri bulunuz. ----Telco ?emas? i�in

SELECT * FROM customer where LOWER(name) like 'e%';

-- Product tipi 'DSL' ile biten �r�nleri bulunuz. ----Telco ?emas? i�in

SELECT * FROM  product where product_type like '%DSL';

-- ?sminde ya da soyisminde '�' harfi ge�en m�?teriler hangileridir? ----Telco ?emas? i�in

SELECT * FROM  customer where LOWER(name) like '%�%' or LOWER(surname) like '%�%';

-- �lke kodu UK ve AU olan adresleri bulunuz.----Telco ?emas? i�in

SELECT * FROM  address where country_cd='UK' or country_cd='AU';

-- Taahh�t s�resi 240 ve 120 ay olan b�t�n s�zle?meleri bulmak istiyoruz.----Telco ?emas? i�in

-- S�zle?me alt tipi MAIN olan ka� tane s�zle?me vard?r?----Telco ?emas? i�in

SELECT count(*) FROM  subs_lifecycle  where agreement_type = 'MAIN';

-- Deaktif m�?terilerin say?s?n? bulunuz.----Telco ?emas? i�in

SELECT count(*) FROM customer where status='DEACTIVE';

-- ?leti?im tipi olarak email ve statusu kullan?mda olan ka� m�?teri var?----Telco ?emas? i�in

SELECT * FROM contact where cnt_type='EMAIL' and status = 'USED';