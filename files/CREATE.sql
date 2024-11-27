-- Tworzenie tabeli Właściciel
CREATE TABLE Właściciel (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 1000000),
    Imie VARCHAR(20) NOT NULL CHECK (Imie NOT LIKE '% %'),
    Nazwisko VARCHAR(30) NOT NULL CHECK (Nazwisko NOT LIKE '% %'),
    Email VARCHAR(30) NOT NULL,
    Nr_telefonu VARCHAR(9) NOT NULL CHECK (LEN(Nr_telefonu) = 9 AND Nr_telefonu NOT LIKE '%[^0-9]%'),
    Data_urodzenia DATE,
    Stan_cywilny VARCHAR(20) NOT NULL CHECK (Stan_cywilny IN ('kawaler', 'panna', 'żonaty', 'zamężna', 'wdowiec', 'wdowa', 'rozwiedziony', 'rozwiedziona')),
    Posiadanie_dzieci BIT
);

-- Tworzenie tabeli Historia_wypadków
CREATE TABLE Historia_wypadków (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 1000000),
    Data_wypadku DATE,
    Koszty_naprawy INT NOT NULL CHECK (Koszty_naprawy BETWEEN 1 AND 1000000),
    Stan_uszkodzenia VARCHAR(300) NOT NULL CHECK (LEN(Stan_uszkodzenia) BETWEEN 1 AND 300),
    Sprawca_wypadku VARCHAR(30) NOT NULL CHECK (Sprawca_wypadku IN ('właściciel', 'inny kierowca', 'osoba postronna'))
);

-- Tworzenie tabeli Posiadanie_wypadków
CREATE TABLE Posiadanie_wypadków (
    właściciel INT,
    historia INT,
    FOREIGN KEY (właściciel) REFERENCES Właściciel(ID) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY (historia) REFERENCES Historia_wypadków(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tworzenie tabeli Samochód
CREATE TABLE Samochód (
    Nr_VIN VARCHAR(17) PRIMARY KEY NOT NULL CHECK (LEN(Nr_VIN) = 17),
    Marka VARCHAR(20) NOT NULL CHECK (LEN(Marka) BETWEEN 1 AND 20),
    Model VARCHAR(20) NOT NULL CHECK (LEN(Model) BETWEEN 1 AND 20),
    Rok_produkcji DATE,
    Data_pierwszej_rejestracji DATE,
    Przebieg INT NOT NULL CHECK (Przebieg BETWEEN 1 AND 1500000),
    Moc_silnika INT NOT NULL CHECK (Moc_silnika BETWEEN 1 AND 1500),
    Pojemnosc_silnika DECIMAL(4,1) NOT NULL CHECK (Pojemnosc_silnika BETWEEN 0 AND 10),
    Typ_silnika VARCHAR(20) NOT NULL CHECK (Typ_silnika IN ('benzyna', 'diesel', 'elektryczny', 'hybryda', 'wodór', 'etanol', 'benzyna + gaz')),
    Kolor VARCHAR(20) NOT NULL CHECK (LEN(Kolor) BETWEEN 1 AND 20),
    Pakiet_wyposazenia VARCHAR(200) NOT NULL CHECK (LEN(Pakiet_wyposazenia) BETWEEN 1 AND 200)
);

-- Tworzenie tabeli Stan_posiadania
CREATE TABLE Stan_posiadania (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 4000000),
    Od_kiedy_posiada DATE,
    Sposob_finansowania VARCHAR(20) NOT NULL CHECK (Sposob_finansowania IN ('gotówka', 'kredyt', 'leasing', 'najem')),
    Stan_prawny VARCHAR(20) NOT NULL CHECK (Stan_prawny IN ('osoba fizyczna', 'firma')),
    Nr_VIN_samochodu VARCHAR(17),
    FOREIGN KEY (Nr_VIN_samochodu) REFERENCES Samochód(Nr_VIN) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tworzenie tabeli Posiadanie
CREATE TABLE Posiadanie (
    właściciel INT,
    stan INT,
    FOREIGN KEY (właściciel) REFERENCES Właściciel(ID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (stan) REFERENCES Stan_posiadania(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tworzenie tabeli Użytkowanie_samochodu
CREATE TABLE Użytkowanie_samochodu (
    Nr_rejestracyjny VARCHAR(10) PRIMARY KEY NOT NULL,
    Przewidywany_roczny_przebieg INT NOT NULL CHECK (Przewidywany_roczny_przebieg BETWEEN 1 AND 1000000),
    Miejsce_parkowania VARCHAR(20) NOT NULL CHECK (Miejsce_parkowania IN ('publiczny parking', 'prywatny parking', 'garaż')),
    Sposob_uzytkowania VARCHAR(20) NOT NULL CHECK (Sposob_uzytkowania IN ('użytek prywatny', 'użytek firmowy')),
    Nr_VIN_samochodu VARCHAR(17),
    FOREIGN KEY (Nr_VIN_samochodu) REFERENCES Samochód(Nr_VIN) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tworzenie tabeli Katalog_wyceny_pojazdu
CREATE TABLE Katalog_wyceny_pojazdu (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 200000),
    Marka VARCHAR(20) NOT NULL CHECK (LEN(Marka) BETWEEN 1 AND 20),
    Model VARCHAR(20) NOT NULL CHECK (LEN(Model) BETWEEN 1 AND 20),
    Rok_produkcji DATE,
    Moc_silnika INT NOT NULL CHECK (Moc_silnika BETWEEN 1 AND 1500),
    Pojemnosc_silnika DECIMAL(4,1) NOT NULL CHECK (Pojemnosc_silnika BETWEEN 0 AND 10),
    Typ_silnika VARCHAR(20) NOT NULL CHECK (Typ_silnika IN ('benzyna', 'diesel', 'elektryczny', 'hybryda', 'wodór', 'etanol', 'benzyna + gaz')),
    Pakiet_wyposazenia VARCHAR(200) NOT NULL CHECK (LEN(Pakiet_wyposazenia) BETWEEN 1 AND 200),
    Wartosc_pojazdu INT NOT NULL CHECK (Wartosc_pojazdu BETWEEN 1 AND 5000000)
);

-- Tworzenie tabeli Polisa
CREATE TABLE Polisa (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 4000000),
    Typ_polisy VARCHAR(30) NOT NULL CHECK (Typ_polisy IN ('OC', 'OC+AC', 'OC+NNW', 'OC+Assistance', 'OC+AC+NNW', 'OC+AC+Assistance', 'NNW', 'Assistance', 'AC', 'NNW+Assistance', 'AC+NNW', 'AC+Assistance', 'OC+AC+Assistance+NNW')),
    Cena_polisy INT NOT NULL CHECK (Cena_polisy BETWEEN 1 AND 30000),
    Data_od_kiedy_obowiazuje DATE,
    Data_do_kiedy_obowiazuje DATE,
    CONSTRAINT Check_Daty CHECK (Data_do_kiedy_obowiazuje >=  Data_od_kiedy_obowiazuje),
    Nr_VIN_samochodu VARCHAR(17),
    ID_pojazdu_z_katalogu INT,
    FOREIGN KEY (Nr_VIN_samochodu) REFERENCES Samochód(Nr_VIN) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_pojazdu_z_katalogu) REFERENCES Katalog_wyceny_pojazdu(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tworzenie tabeli Oferta_ubezpieczenia
CREATE TABLE Oferta_ubezpieczenia (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 1000000),
    Data_rozpoczecia_obowiazywania DATE,
    Data_zakonczenia_obowiazywania DATE,
    Sposob_platnosci VARCHAR(20) NOT NULL CHECK (Sposob_platnosci IN ('gotówka', 'płatność ratalna')),
    Wycena_oferty INT NOT NULL CHECK (Wycena_oferty BETWEEN 1 AND 30000)
);

-- Tworzenie tabeli Oferta_dla_polisy
CREATE TABLE Oferta_dla_polisy (
    polisa INT,
    oferta_ubezpieczenia INT,
    FOREIGN KEY (polisa) REFERENCES Polisa(ID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (oferta_ubezpieczenia) REFERENCES Oferta_ubezpieczenia(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabela Znizki_za_prawo_jazdy
CREATE TABLE Znizki_za_prawo_jazdy (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 100),
    Znizka_za_prawo_jazdy VARCHAR(30) UNIQUE
);

-- Wypełnienie tabeli słownikowej danymi
INSERT INTO Znizki_za_prawo_jazdy (ID, Znizka_za_prawo_jazdy)
VALUES
    (1, 'prawo jazdy 5 lat'),
    (2, 'prawo jazdy 10 lat'),
    (3, 'prawo jazdy 15 lat'),
    (4, 'prawo jazdy 20 lat');

-- Tabela Znizki_za_brak_wypadkow
CREATE TABLE Znizki_za_brak_wypadkow (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 100),
    Znizka_za_brak_wypadkow VARCHAR(30) UNIQUE
);

-- Wypełnienie tabeli słownikowej danymi
INSERT INTO Znizki_za_brak_wypadkow (ID, Znizka_za_brak_wypadkow)
VALUES
    (1, 'brak wypadków 5 lat'),
    (2, 'brak wypadków 10 lat'),
    (3, 'brak wypadków 15 lat'),
    (4, 'brak wypadków 20 lat');

-- Tabela Znizki_lojalnosciowa
CREATE TABLE Znizki_lojalnosciowa (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 100),
    Znizka_lojalnosciowa VARCHAR(40) UNIQUE
);

-- Wypełnienie tabeli słownikowej danymi
INSERT INTO Znizki_lojalnosciowa (ID, Znizka_lojalnosciowa)
VALUES
    (1, 'ten sam ubezpieczyciel 5 lat'),
    (2, 'ten sam ubezpieczyciel 10 lat'),
    (3, 'ten sam ubezpieczyciel 15 lat'),
    (4, 'ten sam ubezpieczyciel 20 lat');
    
-- Tworzenie tabeli Oferta_zniżek_kierowcy
CREATE TABLE Oferta_zniżek_kierowcy (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 1000000),
    Znizka_za_prawo_jazdy_ID INT NOT NULL,
    Wartosc_znizki_prawa_jazdy INT NOT NULL CHECK (Wartosc_znizki_prawa_jazdy BETWEEN 0 AND 100),
    Znizka_za_brak_wypadkow_ID INT NOT NULL,
    Wartosc_znizki_bezwypadkowej_jazdy INT NOT NULL CHECK (Wartosc_znizki_bezwypadkowej_jazdy BETWEEN 0 AND 100),
    Znizka_lojalnosciowa_ID INT NOT NULL,
    Wartosc_znizki_lojalnosciowej INT NOT NULL CHECK (Wartosc_znizki_lojalnosciowej BETWEEN 0 AND 100),
    Od_kiedy_obowiazuje DATE,
    Do_kiedy_obowiazuje DATE,
    CONSTRAINT Check_Daty_2 CHECK (Do_kiedy_obowiazuje >= Od_kiedy_obowiazuje)
);

-- Tworzenie tabeli Oferta_zniżek_pakietu
CREATE TABLE Oferta_zniżek_pakietu (
    ID INT PRIMARY KEY NOT NULL CHECK (ID BETWEEN 1 AND 1000000),
    Znizka_za_OC BIT,
    Wartosc_znizki_OC INT NOT NULL CHECK (Wartosc_znizki_OC BETWEEN 0 AND 100),
    Znizka_za_AC BIT,
    Wartosc_znizki_AC INT NOT NULL CHECK (Wartosc_znizki_AC BETWEEN 0 AND 100),
    Znizka_za_NNW BIT,
    Wartosc_znizki_NNW INT NOT NULL CHECK (Wartosc_znizki_NNW BETWEEN 0 AND 100),
    Znizka_za_Assistance BIT,
    Wartosc_znizki_Assistance INT NOT NULL CHECK (Wartosc_znizki_Assistance BETWEEN 0 AND 100),
    Znizka_za_ubezpieczenie_na_zycie BIT,
    Wartosc_znizki_na_zycie INT NOT NULL CHECK (Wartosc_znizki_na_zycie BETWEEN 0 AND 100),
    Znizka_za_ubezpieczenie_na_dom BIT,
    Wartosc_znizki_na_dom INT NOT NULL CHECK (Wartosc_znizki_na_dom BETWEEN 0 AND 100),
    Od_kiedy_obowiazuje DATE,
    Do_kiedy_obowiazuje DATE,
    CONSTRAINT Check_Daty_3 CHECK (Do_kiedy_obowiazuje >= Od_kiedy_obowiazuje)
);

-- Tworzenie tabeli Oferta_ubezpieczenia_zależna_od_kierowcy
CREATE TABLE Oferta_ubezpieczenia_zależna_od_kierowcy (
    oferta_ubezpieczenia INT,
    zniżka_dla_kierowcy INT,
    FOREIGN KEY (oferta_ubezpieczenia) REFERENCES Oferta_ubezpieczenia(ID),
    FOREIGN KEY (zniżka_dla_kierowcy) REFERENCES Oferta_zniżek_kierowcy(ID)
);

-- Tworzenie tabeli Oferta_ubezpieczenia_zależna_od_pakietu
CREATE TABLE Oferta_ubezpieczenia_zależna_od_pakietu (
    oferta_ubezpieczenia INT,
    zniżka_za_pakiet INT,
    FOREIGN KEY (oferta_ubezpieczenia) REFERENCES Oferta_ubezpieczenia(ID),
    FOREIGN KEY (zniżka_za_pakiet) REFERENCES Oferta_zniżek_pakietu(ID)
);
