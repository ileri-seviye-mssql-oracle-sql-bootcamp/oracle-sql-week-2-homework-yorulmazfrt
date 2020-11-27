create table arabalar 
(
id integer NOT NULL,
plaka varchar2(255) NOT NULL,
marka varchar2(255),
modell varchar2(255),
fiyat integer,
    CONSTRAINT arbalar_pk PRIMARY KEY(id)
);
create table musteriler 
(
id integer NOT NULL,
tc varchar2(11) NOT NULL,
ad varchar2(255) ,
soyad varchar2(255),
telefon varchar2(10),

    CONSTRAINT musteriler_pk PRIMARY KEY(id)
);

CREATE table kiralama 
(
id integer NOT NULL,
musteri_id integer NOT NULL,
araba_id integer NOT NULL,
kiralama_tarihi date,
teslim_tarihi date,

    CONSTRAINT kiralama_pk PRIMARY KEY(id),
    CONSTRAINT kiralama_musteri_fk FOREIGN KEY (musteri_id)
    REFERENCES musteriler(id),
    CONSTRAINT kiralama_araba_fk FOREIGN KEY (araba_id)
    REFERENCES arabalar(id)
);

INSERT INTO arabalar(id,plaka,marka,modell,fiyat)
VALUES (1,'06abc06','opel','astra',120);
INSERT INTO arabalar(id,plaka,marka,modell,fiyat)
VALUES (2,'34abc34','volvo','s60',300);
INSERT INTO arabalar(id,plaka,marka,modell,fiyat)
VALUES (3,'35abc35','bmw','320',250);

INSERT INTO musteriler(id,tc,ad,soyad,telefon)
VALUES (1,'11111111111','f?rat','yorulmaz','5555555555');
INSERT INTO musteriler(id,tc,ad,soyad,telefon)
VALUES (2,'11111111112','ali','y?lmaz','5555555552');
INSERT INTO musteriler(id,tc,ad,soyad,telefon)
VALUES (3,'11111111113','ahmet','yalcin','5555555553');

INSERT INTO kiralama
VALUES (1,2,3,'02/12/2015','02/01/2015');
INSERT INTO kiralama(id,musteri_id,araba_id,kiralama_tarihi,teslim_tarihi)
VALUES (2,3,2,'02/02/2018','22/03/2018');
INSERT INTO kiralama(id,musteri_id,araba_id,kiralama_tarihi,teslim_tarihi)
VALUES (3,2,1,'02/05/2019','02/01/2020');

SELECT * FROM kiralama;
create synonym firat_arabalar for arabalar;

SELECT * FROM firat_arabalar;

drop view musteriler2;
create view musteriler2 as
(select * from musteriler where id>=2);

SELECT * FROM musteriler2;