-- SELECT * FROM Właściciel;
-- SELECT * FROM Historia_wypadków;
-- SELECT * FROM Posiadanie_wypadków;
-- SELECT * FROM Samochód;
-- SELECT * FROM Stan_posiadania;
-- SELECT * FROM Posiadanie;
-- SELECT * FROM Użytkowanie_samochodu;
-- SELECT * FROM Katalog_wyceny_pojazdu;
-- SELECT * FROM Polisa;
-- SELECT * FROM Oferta_ubezpieczenia;
-- SELECT * FROM Oferta_dla_polisy;
-- SELECT * FROM Znizki_za_prawo_jazdy;
-- SELECT * FROM Oferta_zniżek_kierowcy;
-- SELECT * FROM Oferta_zniżek_pakietu;
-- SELECT * FROM Oferta_ubezpieczenia_zależna_od_kierowcy;
-- SELECT * FROM Oferta_ubezpieczenia_zależna_od_pakietu;

-- Usuwanie kaskadowe 
SELECT * FROM Właściciel;
SELECT * FROM Posiadanie_wypadków;
SELECT * FROM Posiadanie;

DELETE FROM Właściciel WHERE ID = 1;

SELECT * FROM Właściciel;
SELECT * FROM Posiadanie_wypadków;
SELECT * FROM Posiadanie;

SELECT * FROM Samochód;
SELECT * FROM Stan_posiadania;
SELECT * FROM Użytkowanie_samochodu;
SELECT * FROM Polisa;

DELETE FROM Samochód WHERE Nr_VIN = 'WBAKC01060B734502';

SELECT * FROM Samochód;
SELECT * FROM Stan_posiadania;
SELECT * FROM Użytkowanie_samochodu;
SELECT * FROM Polisa;


-- Kaskadowa aktualizacja 
SELECT * FROM Właściciel;
SELECT * FROM Posiadanie_wypadków;
SELECT * FROM Posiadanie;

UPDATE Właściciel SET ID = 777 WHERE ID = 2;

SELECT * FROM Właściciel;
SELECT * FROM Posiadanie_wypadków;
SELECT * FROM Posiadanie;

SELECT * FROM Samochód;
SELECT * FROM Stan_posiadania;
SELECT * FROM Użytkowanie_samochodu;
SELECT * FROM Polisa;

UPDATE Samochód SET Nr_VIN = 'XXXXXXXXXXXXXXXXX' WHERE Nr_VIN = 'WAUZZZ8K3DA101599';

SELECT * FROM Samochód;
SELECT * FROM Stan_posiadania;
SELECT * FROM Użytkowanie_samochodu;
SELECT * FROM Polisa;