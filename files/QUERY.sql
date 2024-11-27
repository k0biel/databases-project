-- Zapytanie 1 - Znajdź średnią cene za polise dla samochodu w zależności od jego marki i posortuj je malejąco.
SELECT
    S.Marka,
    AVG(P.Cena_polisy) AS Średnia_cena_polisy
FROM
    Polisa P
JOIN
    Samochód S ON P.Nr_VIN_samochodu = S.Nr_VIN
GROUP BY
    S.Marka
ORDER BY
    Średnia_cena_polisy DESC;


-- Zapytanie 2 - Znajdź średni koszt naprawy dla poszczególnych marek samochodów. 

CREATE VIEW Srednie_Koszty_Naprawy_Marek AS
SELECT
    S.Marka AS Marka_Samochodu,
    AVG(Hw.Koszty_naprawy) AS Sredni_Koszt_Naprawy
FROM
    Samochód AS S
JOIN
    Stan_posiadania AS Sp ON S.Nr_VIN = Sp.Nr_VIN_samochodu
JOIN
    Posiadanie_wypadków AS Pw ON Sp.ID = Pw.właściciel
JOIN
    Historia_wypadków AS Hw ON Pw.historia = Hw.ID
GROUP BY
    S.Marka;

SELECT * FROM Srednie_Koszty_Naprawy_Marek;


-- Zapytanie 3 - Znajdź średnią wartość ubezpieczenia dla poszczególnych grup wiekowych właścicieli oraz posortuj je względem ceny rosnąco.

SELECT
    CASE
        WHEN DATEDIFF(YEAR, W.Data_urodzenia, GETDATE()) < 30 THEN 'do 30 lat'
        WHEN DATEDIFF(YEAR, W.Data_urodzenia, GETDATE()) BETWEEN 30 AND 50 THEN '30-50 lat'
        WHEN DATEDIFF(YEAR, W.Data_urodzenia, GETDATE()) > 50 THEN 'powyżej 50 lat'
    END AS Kategoria_wiekowa,
    AVG(Po.Cena_polisy) AS Średnia_wartość_ubezpieczenia
FROM
    Właściciel W
JOIN
    Posiadanie P ON W.ID = P.właściciel
JOIN
    Stan_posiadania S ON P.stan = S.ID
JOIN
    Polisa Po ON S.Nr_VIN_samochodu = Po.Nr_VIN_samochodu
GROUP BY
    CASE
        WHEN DATEDIFF(YEAR, W.Data_urodzenia, GETDATE()) < 30 THEN 'do 30 lat'
        WHEN DATEDIFF(YEAR, W.Data_urodzenia, GETDATE()) BETWEEN 30 AND 50 THEN '30-50 lat'
        WHEN DATEDIFF(YEAR, W.Data_urodzenia, GETDATE()) > 50 THEN 'powyżej 50 lat'
    END
ORDER BY
    Średnia_wartość_ubezpieczenia ASC;


-- Zapytanie 4 - Policz ilość samochodów o danym typie silnika, dla których cena polisy jest powyżej średniej.

SELECT
    S.Typ_silnika AS Typ_silnika,
    COUNT(*) AS Ilość_samochodów
FROM
    Samochód S
JOIN
    Polisa P ON S.Nr_VIN = P.Nr_VIN_samochodu
WHERE
    P.Cena_polisy > (SELECT AVG(Cena_polisy) FROM Polisa)
GROUP BY
    S.Typ_silnika;


-- Zapytanie 5 - Policz jaka jest średnia cena różnych typów polis dla których obowiązuje zniżka dla kierowcy, który posiada 10 lat prawo jazdy i nie miał wypadku 5 lat. Posortuj je względem ceny malejąco.

SELECT
    P.Typ_polisy AS Typ_polisy,
    AVG(P.Cena_polisy) AS Średnia_cena
FROM
    Polisa P
JOIN
    Oferta_ubezpieczenia OU ON P.ID = OU.ID
JOIN

    Oferta_ubezpieczenia_zależna_od_kierowcy OUK ON OU.ID = OUK.oferta_ubezpieczenia
JOIN
    Oferta_zniżek_kierowcy OZK ON OUK.zniżka_dla_kierowcy = OZK.ID
WHERE
    OZK.Znizka_za_prawo_jazdy_ID = (SELECT ID FROM Znizki_za_prawo_jazdy WHERE Znizka_za_prawo_jazdy = 'prawo jazdy 10 lat')
    AND OZK.Znizka_za_brak_wypadkow_ID = (SELECT ID FROM Znizki_za_brak_wypadkow WHERE Znizka_za_brak_wypadkow = 'brak wypadków 5 lat')
GROUP BY
    P.Typ_polisy
ORDER BY
    Średnia_cena DESC;


-- ZAPYTANIA Z REALIZACJI ZADANIA 2
-- Zapytanie 6 - Pudulek.pl robi artykuł, który sprawdzi ilość wypadków względem imion. Podaj 10 imion, które ma na swoim koncie najwięcej wypadków.

CREATE VIEW Ilosc_Wypadkow_Na_Imie AS
SELECT
    W.Imie,
    COUNT(HW.ID) AS IloscWypadkow
FROM
    Właściciel W
JOIN
    Posiadanie_wypadków PW ON W.ID = PW.właściciel
JOIN
    Historia_wypadków HW ON PW.historia = HW.ID
GROUP BY
    W.Imie;

SELECT TOP 10 * FROM Ilosc_Wypadkow_Na_Imie
ORDER BY IloscWypadkow DESC;

-- Zapytanie 7 - Właściciel firmy ubezpieczeniowej chce wiedzieć, jak często dane typy polis są wybierane. Uporządkuj rosnąco typy polis obowiązujących przez najbliższy rok wg ilości osób, które je wykupiły.

CREATE VIEW Liczba_Osob_Na_Typ_Polisy AS
SELECT
    Typ_polisy,
    COUNT(*) AS LiczbaOsob
FROM
    Polisa
WHERE
    Data_do_kiedy_obowiazuje >= GETDATE() AND Data_od_kiedy_obowiazuje <= DATEADD(YEAR, 1, GETDATE())
GROUP BY
    Typ_polisy;

SELECT * FROM Liczba_Osob_Na_Typ_Polisy
ORDER BY LiczbaOsob ASC;


-- RESZTA ZAPYTAŃ Z REALIZACJI ZADANIA 2

-- Uzyskaj listę ofert zniżek dostępnych dla kierowcy, który posiada 10 lat prawo jazdy i nie miał wypadku x lat.

SELECT *
FROM Oferta_ubezpieczenia_zależna_od_kierowcy OUK
JOIN Oferta_zniżek_kierowcy OZK ON OUK.zniżka_dla_kierowcy = OZK.ID
WHERE OZK.Znizka_za_prawo_jazdy_ID = (SELECT ID FROM Znizki_za_prawo_jazdy WHERE Znizka_za_prawo_jazdy = 'prawo jazdy 10 lat')
  AND OZK.Znizka_za_brak_wypadkow_ID = (SELECT ID FROM Znizki_za_brak_wypadkow WHERE Znizka_za_brak_wypadkow = 'brak wypadków 5 lat');


-- Klientka polisy o ID X wyszła za mąż i przyjęła nazwisko męża. Należy zmienić jej nazwisko w danych z “Kowalska” na “Nowak”.

UPDATE Właściciel
SET Nazwisko = 'NoweNazwisko'
FROM Właściciel
INNER JOIN Posiadanie ON Właściciel.ID = Posiadanie.właściciel
INNER JOIN Stan_posiadania ON Posiadanie.stan = Stan_posiadania.ID
INNER JOIN Polisa ON Stan_posiadania.Nr_VIN_samochodu = Polisa.Nr_VIN_samochodu
WHERE Polisa.ID = X;

SELECT *
FROM Właściciel
WHERE ID IN (SELECT właściciel FROM Posiadanie WHERE stan IN (SELECT ID FROM Stan_posiadania WHERE Nr_VIN_samochodu = (SELECT Nr_VIN_samochodu FROM Polisa WHERE ID = X)));

-- Właściciel, który jest klientem firmy, o podanym imieniu i nazwisku, dacie urodzenia i numerze telefonu dzwoni do firmy ubezpieczeniowej i chce się dowiedzieć jaka jest jego oferta zniżek. Sporządź jej zestawienie.

SELECT
    W.Imie,
    W.Nazwisko,
    W.Data_urodzenia,
    W.Nr_telefonu,
    OZK.Od_kiedy_obowiazuje AS Znizka_Od,
    OZK.Do_kiedy_obowiazuje AS Znizka_Do,
    OZK.Wartosc_znizki_prawa_jazdy,
    OZK.Wartosc_znizki_bezwypadkowej_jazdy,
    OZK.Wartosc_znizki_lojalnosciowej
FROM
    Właściciel W
JOIN
    Posiadanie P ON W.ID = P.właściciel
JOIN
    Stan_posiadania SP ON P.stan = SP.ID
LEFT JOIN
    Oferta_zniżek_kierowcy OZK ON SP.ID = OZK.ID
WHERE
    W.Imie = 'Imie'
    AND W.Nazwisko = 'Nazwisko'
    AND W.Data_urodzenia = 'DataUrodzenia'
    AND W.Nr_telefonu = 'NrTelefonu';


-- Klient dzwoni do firmy ubezpieczeniowej, aby przypomnieć sobie jaki był koszt naprawy jego ostatniego wypadku. Podaj tą kwotę.

SELECT TOP 1
    H.Koszty_naprawy AS Koszt_naprawy_ostatniego_wypadku
FROM
    Właściciel W
JOIN
    Posiadanie_wypadków PW ON W.ID = PW.właściciel
JOIN
    Historia_wypadków H ON PW.historia = H.ID
WHERE
    W.Imie = 'Imie'
    AND W.Nazwisko = 'Nazwisko'
ORDER BY
    H.Data_wypadku DESC;
