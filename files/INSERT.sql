INSERT INTO Właściciel (ID, Imie, Nazwisko, Email, Nr_telefonu, Data_urodzenia, Stan_cywilny, Posiadanie_dzieci)
VALUES
    (1, 'Adam', 'Nowak', 'adam.nowak@example.com', '123456789', '1988-07-15', 'żonaty', 1),
    (2, 'Maria', 'Kowalska', 'maria.kowalska@example.com', '987654321', '1995-03-20', 'panna', 0),
    (3, 'Tomasz', 'Lis', 'tomasz.lis@example.com', '456789123', '1980-11-10', 'kawaler', 0),
    (4, 'Karolina', 'Jaworska', 'karolina.jaworska@example.com', '555666777', '1976-09-05', 'żonaty', 1),
    (5, 'Krzysztof', 'Wrobel', 'krzysztof.wrobel@example.com', '111222333', '1992-01-25', 'kawaler', 0),
    (6, 'Ewa', 'Duda', 'ewa.duda@example.com', '777888999', '1983-12-30', 'zamężna', 1),
    (7, 'Piotr', 'Mazur', 'piotr.mazur@example.com', '333444555', '1974-06-18', 'rozwiedziony', 1),
    (8, 'Joanna', 'Krawczyk', 'joanna.krawczyk@example.com', '222333444', '1989-04-12', 'zamężna', 0),
    (9, 'Marek', 'Blaszczyk', 'marek.blaszczyk@example.com', '999888777', '1978-08-22', 'żonaty', 1),
    (10, 'Alicja', 'Pawlak', 'alicja.pawlak@example.com', '666777888', '1998-02-08', 'panna', 0),
    (11, 'Marta', 'Zielinski', 'marta.zielinski@example.com', '555444333', '1991-06-12', 'wdowa', 1),
    (12, 'Rafal', 'Wojcik', 'rafal.wojcik@example.com', '666555444', '1979-03-08', 'rozwiedziony', 0),
    (13, 'Monika', 'Sawicka', 'monika.sawicka@example.com', '777666555', '1987-09-25', 'panna', 0),
    (14, 'Pawel', 'Kaminski', 'pawel.kaminski@example.com', '888777666', '1980-12-18', 'żonaty', 1),
    (15, 'Justyna', 'Lukasik', 'justyna.lukasik@example.com', '999888777', '1975-08-05', 'rozwiedziona', 0),
    (16, 'Dariusz', 'Nowicki', 'dariusz.nowicki@example.com', '333222111', '1996-02-28', 'kawaler', 0),
    (17, 'Agnieszka', 'Czerwinska', 'agni.czerwinska@example.com', '444333222', '1982-10-15', 'wdowiec', 1),
    (18, 'Kamil', 'Krol', 'kamil.krol@example.com', '111000999', '1976-04-20', 'żonaty', 0),
    (19, 'Julia', 'Sobczyk', 'julia.sobczyk@example.com', '222111000', '1990-11-03', 'zamężna', 1),
    (20, 'Grzegorz', 'Witkowski', 'grzegorz.witkowski@example.com', '123123123', '1976-04-20', 'żonaty', 0);

-- Tabela Historia_wypadków
INSERT INTO Historia_wypadków (ID, Data_wypadku, Koszty_naprawy, Stan_uszkodzenia, Sprawca_wypadku)
VALUES
    (1, '2022-05-10', 2500, 'Lewe boczne drzwi uszkodzone, zarysowania na karoserii', 'inny kierowca'),
    (2, '2023-01-25', 12000, 'Lewe boczne drzwi uszkodzone, zarysowania na karoserii', 'właściciel'),
    (3, '2023-06-30', 500, 'Tył pojazdu uszkodzony, rysy na zderzaku', 'osoba postronna'),
    (4, '2022-11-18', 8000, 'Wszystkie drzwi uszkodzone, rozbite szyby', 'inny kierowca'),
    (5, '2023-09-05', 1500, 'Prawe tylnie błotnik i drzwi uszkodzone', 'osoba postronna'),
    (6, '2023-07-14', 3500, 'Zderzak uszkodzony, rysy na klapie bagażnika', 'inny kierowca'),
    (7, '2022-08-22', 600, 'Lewe tylne drzwi uszkodzone, niewielkie rysy na karoserii', 'właściciel'),
    (8, '2023-03-19', 9200, 'Prawa strona pojazdu uszkodzona, stłuczony zderzak', 'inny kierowca'),
    (9, '2023-10-28', 1800, 'Przód i maska uszkodzone, silne zniszczenia mechaniczne', 'inny kierowca'),
    (10, '2022-12-05', 4300, 'Lewe tylne błotnik i drzwi uszkodzone, zarysowania', 'właściciel'),
    (11, '2023-05-17', 300, 'Rysy na drzwiach, niewielkie uszkodzenia karoserii', 'osoba postronna'),
    (12, '2023-02-08', 5400, 'Cały bok pojazdu uszkodzony, rozbite lusterko', 'inny kierowca'),
    (13, '2022-10-23', 7600, 'Przód i zderzak uszkodzone, uszkodzenia mechaniczne', 'osoba postronna'),
    (14, '2023-07-06', 1800, 'Lewe drzwi i tylny błotnik uszkodzone, zarysowania', 'inny kierowca'),
    (15, '2023-09-14', 6700, 'Cały tył pojazdu uszkodzony, uszkodzenia mechaniczne', 'właściciel'),
    (16, '2022-11-30', 950, 'Przód pojazdu lekko uszkodzony, rysy na masce', 'inny kierowca'),
    (17, '2023-04-02', 4300, 'Lewe tylne drzwi i błotnik uszkodzone, zarysowania', 'właściciel'),
    (18, '2023-08-09', 2200, 'Prawe tylne drzwi uszkodzone, niewielkie rysy', 'osoba postronna'),
    (19, '2022-09-12', 5100, 'Prawa strona pojazdu uszkodzona, rozbite lusterko', 'właściciel'),
    (20, '2023-01-04', 2800, 'Lewe boczne drzwi i błotnik uszkodzone, rysy', 'inny kierowca');

-- Tabela Posiadanie_wypadków
INSERT INTO Posiadanie_wypadków (właściciel, historia)
VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);

-- Tabela Samochód
INSERT INTO Samochód (Nr_VIN, Marka, Model, Rok_produkcji, Data_pierwszej_rejestracji, Przebieg, Moc_silnika, Pojemnosc_silnika, Typ_silnika, Kolor, Pakiet_wyposazenia)
VALUES
    ('WBAKC01060B734502', 'BMW', 'Seria 3', '2019-01-01', '2019-02-15', 60000, 190, 2.0, 'diesel', 'czarny', 'M-pakiet'),
    ('WAUZZZ8K3DA101596', 'BMW', 'Seria 3', '2018-01-01', '2018-03-20', 75000, 170, 2.0, 'diesel', 'biały', 'S-Line'),
    ('WDDUG8CB7FA123456', 'Mercedes-Benz', 'C-Class', '2020-01-01', '2020-04-10', 40000, 280, 3.0, 'benzyna', 'czarny', 'Pakiet stylistyczny AMG'),
    ('WBA5R11020G323567', 'Nissan', 'Micra', '2008-01-01', '2008-05-05', 120000, 80, 1.2, 'benzyna', 'fioletowy', 'Acenta'),
    ('WAUZZZ8K3DA101597', 'Volkswagen', 'Passat', '2011-01-01', '2011-06-15', 55000, 140, 2.0, 'diesel', 'zielony', 'Highline'),
    ('WDDNG9EBXDA516320', 'Dacia', 'Duster', '2013-01-01', '2013-07-20', 231000, 110, 1.4, 'benzyna', 'czarny', 'Laureate'),
    ('WBA5R11020G323568', 'Fiat', '500', '2012-01-01', '2012-08-25', 143000, 69, 1.2, 'benzyna', 'czerwony', 'Collezione'),
    ('WAUZZZ8K3DA101598', 'Ford', 'Mondeo', '2017-01-01', '2017-09-30', 240000, 125, 2.0, 'diesel', 'niebieski', 'Titanium'),
    ('WDDNG9EBXDA516321', 'Honda', 'Civic', '2016-01-01', '2016-10-05', 85000, 142, 1.8, 'benzyna', 'czarny', 'Elegance'),
    ('WBA5R11020G323569', 'Hyundai', 'i20', '2015-01-01', '2015-11-15', 150000, 84, 1.2, 'benzyna + gaz', 'biały', 'Classic'),
    ('WAUZZZ8K3DA101599', 'Kia', 'Ceed', '2019-01-01', '2019-12-20', 168000, 115, 1.6, 'diesel', 'czarny', 'Business Line'),
    ('WDDNG9EBXDA516322', 'Lamborghini', 'Aventador', '2021-01-01', '2021-03-25', 3900, 740, 6.5, 'benzyna', 'srebrny', 'S'),
    ('WBA5R11020G323570', 'Mazda', 'CX-5', '2013-01-01', '2013-08-30', 183900, 150, 2.2, 'diesel', 'czarny', 'Nakama'),
    ('WAUZZZ8K3DA101600', 'Opel', 'Astra', '2011-01-01', '2011-10-10', 242000, 180, 1.6, 'benzyna', 'czerwony', 'Sport'),
    ('WDDNG9EBXDA516323', 'Porsche', 'Taycan', '2020-01-01', '2020-05-15', 13300, 571, 0.0, 'elektryczny', 'czarny', 'Performance Plus'),
    ('WBA5R11020G323571', 'Renault', 'Clio', '2005-01-01', '2005-11-20', 168000, 88, 1.6, 'benzyna', 'niebieski', 'Expression'),
    ('WAUZZZ8K3DA101601', 'Toyota', 'Auris', '2011-01-01', '2011-09-25', 258000, 99, 1.8, 'hybryda', 'szary', 'Prestige'),
    ('WDDNG9EBXDA516324', 'Volvo', 'V-40', '2019-01-01', '2019-12-05', 135000, 120, 2.0, 'diesel', 'czarny', 'Momentum'),
    ('WBA5R11020G323572', 'MINI', 'Cooper', '2023-01-01', '2023-10-10', 3000, 178, 2.0, 'benzyna', 'czerwony', 'John Works'),
    ('WBA5R11020G323573', 'Jeep', 'Wrangler', '2020-01-01', '2020-10-10', 69000, 272, 2.0, 'benzyna', 'czerwony', 'Limited');

-- Tabela Stan_posiadania
INSERT INTO Stan_posiadania (ID, Od_kiedy_posiada, Sposob_finansowania, Stan_prawny, Nr_VIN_samochodu)
VALUES
    (1, '2020-01-01', 'kredyt', 'osoba fizyczna', 'WBAKC01060B734502'),
    (2, '2018-05-15', 'leasing', 'firma', 'WAUZZZ8K3DA101596'),
    (3, '2019-10-20', 'gotówka', 'osoba fizyczna', 'WDDUG8CB7FA123456'),
    (4, '2021-03-12', 'kredyt', 'osoba fizyczna', 'WBA5R11020G323567'),
    (5, '2020-11-28', 'najem', 'firma', 'WAUZZZ8K3DA101597'),
    (6, '2017-09-05', 'leasing', 'osoba fizyczna', 'WDDNG9EBXDA516320'),
    (7, '2019-12-10', 'kredyt', 'firma', 'WBA5R11020G323568'),
    (8, '2022-06-18', 'gotówka', 'osoba fizyczna', 'WAUZZZ8K3DA101598'),
    (9, '2020-04-25', 'najem', 'firma', 'WDDNG9EBXDA516321'),
    (10, '2018-08-30', 'leasing', 'osoba fizyczna', 'WBA5R11020G323569'),
    (11, '2021-07-22', 'gotówka', 'osoba fizyczna', 'WAUZZZ8K3DA101599'),
    (12, '2019-11-17', 'najem', 'firma', 'WDDNG9EBXDA516322'),
    (13, '2022-02-14', 'kredyt', 'osoba fizyczna', 'WBA5R11020G323570'),
    (14, '2018-12-09', 'leasing', 'osoba fizyczna', 'WAUZZZ8K3DA101600'),
    (15, '2020-05-31', 'gotówka', 'firma', 'WDDNG9EBXDA516323'),
    (16, '2019-06-25', 'najem', 'firma', 'WBA5R11020G323571'),
    (17, '2021-08-12', 'kredyt', 'osoba fizyczna', 'WAUZZZ8K3DA101601'),
    (18, '2022-01-05', 'najem', 'osoba fizyczna', 'WDDNG9EBXDA516324'),
    (19, '2018-07-19', 'leasing', 'osoba fizyczna', 'WBA5R11020G323572'),
    (20, '2020-09-14', 'gotówka', 'firma', 'WBA5R11020G323573');

-- Tabela Posiadanie
INSERT INTO Posiadanie (właściciel, stan)
VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);

-- Tabela Użytkowanie_samochodu
INSERT INTO Użytkowanie_samochodu (Nr_rejestracyjny, Przewidywany_roczny_przebieg, Miejsce_parkowania, Sposob_uzytkowania, Nr_VIN_samochodu)
VALUES
    ('XYZ123', 15000, 'prywatny parking', 'użytek prywatny', 'WBAKC01060B734502'),
    ('ABC456', 20000, 'garaż', 'użytek firmowy', 'WAUZZZ8K3DA101596'),
    ('DEF789', 18000, 'publiczny parking', 'użytek prywatny', 'WDDUG8CB7FA123456'),
    ('GHI012', 22000, 'prywatny parking', 'użytek firmowy', 'WBA5R11020G323567'),
    ('JKL345', 19000, 'publiczny parking', 'użytek prywatny', 'WAUZZZ8K3DA101597'),
    ('MNO678', 17000, 'garaż', 'użytek firmowy', 'WDDNG9EBXDA516320'),
    ('PQR901', 21000, 'prywatny parking', 'użytek prywatny', 'WBA5R11020G323568'),
    ('STU234', 16000, 'publiczny parking', 'użytek prywatny', 'WAUZZZ8K3DA101598'),
    ('VWX567', 19000, 'garaż', 'użytek firmowy', 'WDDNG9EBXDA516321'),
    ('YZA890', 23000, 'prywatny parking', 'użytek prywatny', 'WBA5R11020G323569'),
    ('BCD123', 18000, 'publiczny parking', 'użytek prywatny', 'WAUZZZ8K3DA101599'),
    ('EFG456', 20000, 'garaż', 'użytek firmowy', 'WDDNG9EBXDA516322'),
    ('HIJ789', 19000, 'prywatny parking', 'użytek prywatny', 'WBA5R11020G323570'),
    ('KLM012', 22000, 'publiczny parking', 'użytek prywatny', 'WAUZZZ8K3DA101600'),
    ('NOP345', 18000, 'garaż', 'użytek firmowy', 'WDDNG9EBXDA516323'),
    ('PQR678', 20000, 'prywatny parking', 'użytek prywatny', 'WBA5R11020G323571'),
    ('STU901', 19000, 'publiczny parking', 'użytek prywatny', 'WAUZZZ8K3DA101601'),
    ('VWX234', 21000, 'garaż', 'użytek firmowy', 'WDDNG9EBXDA516324'),
    ('YZA567', 17000, 'prywatny parking', 'użytek prywatny', 'WBA5R11020G323572'),
    ('BCD890', 19000, 'publiczny parking', 'użytek prywatny', 'WBA5R11020G323573');

-- Tabela Katalog_wyceny_pojazdu
INSERT INTO Katalog_wyceny_pojazdu (ID, Marka, Model, Rok_produkcji, Moc_silnika, Pojemnosc_silnika, Typ_silnika, Pakiet_wyposazenia, Wartosc_pojazdu)
VALUES
    (1, 'BMW', 'Seria 3', '2019-01-01', 190, 2.0, 'diesel', 'M-pakiet', 100000),
    (2, 'BMW', 'Seria 3', '2018-01-01', 170, 2.0, 'diesel', 'S-Line', 100000),
    (3, 'Mercedes-Benz', 'C-Class', '2020-01-01', 280, 3.0, 'benzyna', 'Pakiet stylistyczny AMG', 120000),
    (4, 'Nissan', 'Micra', '2008-01-01', 80, 1.2, 'benzyna', 'Acenta', 10000),
    (5, 'Volkswagen', 'Passat', '2011-01-01', 140, 2.0, 'diesel', 'Highline', 15000),
    (6, 'Dacia', 'Duster', '2013-01-01', 110, 1.4, 'benzyna', 'Laureate', 18000),
    (7, 'Fiat', '500', '2012-01-01', 69, 1.2, 'benzyna', 'Collezione', 12000),
    (8, 'Ford', 'Mondeo', '2017-01-01', 125, 2.0, 'diesel', 'Titanium', 35000),
    (9, 'Honda', 'Civic', '2016-01-01', 142, 1.8, 'benzyna', 'Elegance', 45000),
    (10, 'Hyundai', 'i20', '2015-01-01', 84, 1.2, 'benzyna + gaz', 'Classic', 30000),
    (11, 'Kia', 'Ceed', '2019-01-01', 115, 1.6, 'diesel', 'Business Line', 80000),
    (12, 'Lamborghini', 'Aventador', '2021-01-01', 740, 6.5, 'benzyna', 'S', 2500000),
    (13, 'Mazda', 'CX-5', '2013-01-01', 150, 2.2, 'diesel', 'Nakama', 55000),
    (14, 'Opel', 'Astra', '2011-01-01', 180, 1.6, 'benzyna', 'Sport', 28000),
    (15, 'Porsche', 'Taycan', '2020-01-01', 571, 0.0, 'elektryczny', 'Performance Plus', 800000),
    (16, 'Renault', 'Clio', '2005-01-01', 88, 1.6, 'benzyna', 'Expression', 12000),
    (17, 'Toyota', 'Auris', '2011-01-01', 99, 1.8, 'hybryda', 'Prestige', 32000),
    (18, 'Volvo', 'V-40', '2019-01-01', 120, 2.0, 'diesel', 'Momentum', 45000),
    (19, 'MINI', 'Cooper', '2023-01-01', 178, 2.0, 'benzyna', 'John Works', 160000),
    (20, 'Jeep', 'Wrangler', '2020-01-01', 272, 2.0, 'benzyna', 'Limited', 170000);

-- Tabela Polisa
INSERT INTO Polisa (ID, Typ_polisy, Cena_polisy, Data_od_kiedy_obowiazuje, Data_do_kiedy_obowiazuje, Nr_VIN_samochodu, ID_pojazdu_z_katalogu)
VALUES
    (1, 'OC', 3000, '2023-01-01', '2024-01-01', 'WBAKC01060B734502', 1),
    (2, 'OC+AC', 3800, '2023-02-01', '2023-12-31', 'WAUZZZ8K3DA101596', 2),
    (3, 'OC+NNW', 2900, '2023-03-01', '2023-12-31', 'WDDUG8CB7FA123456', 3),
    (4,'OC+Assistance', 700, '2023-04-01', '2023-12-31', 'WBA5R11020G323567', 4),
    (5, 'OC+AC+NNW', 2000, '2023-05-01', '2023-12-31', 'WAUZZZ8K3DA101597', 5),
    (6, 'OC+AC+Assistance', 1200, '2023-06-01', '2023-12-31', 'WDDNG9EBXDA516320', 6),
    (7, 'NNW', 500, '2023-07-01', '2023-12-31', 'WBA5R11020G323568', 7),
    (8, 'Assistance', 400, '2023-08-01', '2023-12-31', 'WAUZZZ8K3DA101598', 8),
    (9, 'AC', 900, '2023-09-01', '2023-12-31', 'WDDNG9EBXDA516321', 9),
    (10, 'NNW+Assistance', 600, '2023-10-01', '2023-12-31', 'WBA5R11020G323569', 10),
    (11, 'AC+NNW', 700, '2023-11-01', '2023-12-31', 'WAUZZZ8K3DA101599', 11),
    (12, 'AC+Assistance', 18000, '2023-12-01', '2023-12-31', 'WDDNG9EBXDA516322', 12),
    (13, 'OC+AC+Assistance+NNW', 1500, '2024-01-01', '2024-12-31', 'WBA5R11020G323570', 13),
    (14, 'Assistance', 1300, '2024-02-01', '2024-12-31', 'WAUZZZ8K3DA101600', 14),
    (15, 'OC+Assistance', 10000, '2024-03-01', '2024-12-31', 'WDDNG9EBXDA516323', 15),
    (16, 'OC+AC+Assistance+NNW', 1400, '2024-04-01', '2024-12-31', 'WBA5R11020G323571', 16),
    (17, 'OC+AC+Assistance+NNW', 1800, '2024-05-01', '2024-12-31', 'WAUZZZ8K3DA101601', 17),
    (18, 'AC+Assistance', 1200, '2024-06-01', '2024-12-31', 'WDDNG9EBXDA516324', 18),
    (19, 'AC+NNW', 2900, '2024-07-01', '2024-12-31', 'WBA5R11020G323572', 19),
    (20, 'OC+AC+NNW', 3300, '2024-08-01', '2024-12-31', 'WBA5R11020G323573', 20);

INSERT INTO Oferta_ubezpieczenia (ID, Data_rozpoczecia_obowiazywania, Data_zakonczenia_obowiazywania, Sposob_platnosci, Wycena_oferty)
VALUES
    (1, '2023-01-01', '2023-06-01', 'płatność ratalna', 1500),
    (2, '2023-02-01', '2023-12-31', 'gotówka', 3800),
    (3, '2023-03-01', '2023-12-31', 'gotówka', 2900),
    (4, '2023-04-01', '2023-12-31', 'płatność ratalna', 700),
    (5, '2023-05-01', '2023-12-31', 'gotówka', 2000),
    (6, '2023-06-01', '2023-12-31', 'płatność ratalna', 1200),
    (7, '2023-07-01', '2023-12-31', 'płatność ratalna', 500),
    (8, '2023-08-01', '2023-12-31', 'gotówka', 400),
    (9, '2023-09-01', '2023-12-31', 'płatność ratalna', 900),
    (10, '2023-10-01', '2023-12-31', 'gotówka', 600),
    (11, '2023-11-01', '2023-12-31', 'gotówka', 700),
    (12, '2023-12-01', '2023-12-31', 'płatność ratalna', 18000),
    (13, '2024-01-01', '2024-12-31', 'gotówka', 1500),
    (14, '2024-02-01', '2024-12-31', 'płatność ratalna', 1300),
    (15, '2024-03-01', '2024-12-31', 'płatność ratalna', 10000),
    (16, '2024-04-01', '2024-12-31', 'gotówka', 1400),
    (17, '2024-05-01', '2024-12-31', 'gotówka', 1800),
    (18, '2024-06-01', '2024-12-31', 'płatność ratalna', 1200),
    (19, '2024-07-01', '2024-12-31', 'płatność ratalna', 2900),
    (20, '2024-08-01', '2024-12-31', 'gotówka', 3300),
    (21, '2023-06-01', '2024-01-01', 'płatność ratalna', 1500)


-- Tabela Oferta_dla_polisy
INSERT INTO Oferta_dla_polisy (polisa, oferta_ubezpieczenia)
VALUES
    (1, 1),
    (1, 21),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);

-- Tabela Znizki_za_prawo_jazdy
INSERT INTO Znizki_za_prawo_jazdy (ID, Znizka_za_prawo_jazdy)
VALUES
    (5, 'prawo jazdy 2 lat'),
    (6, 'prawo jazdy 3 lat'),
    (7, 'prawo jazdy 4 lat'),
    (8, 'prawo jazdy 6 lat'),
    (9, 'prawo jazdy 7 lat'),
    (10, 'prawo jazdy 30 lat'),
    (11, 'prawo jazdy 25 lat'),
    (12, 'prawo jazdy 8 lat'),
    (13, 'prawo jazdy 9 lat'),
    (14, 'prawo jazdy 12 lat');

-- Tabela Znizki_za_brak_wypadkow
INSERT INTO Znizki_za_brak_wypadkow (ID, Znizka_za_brak_wypadkow)
VALUES
    (5, 'brak wypadków 2 lat'),
    (6, 'brak wypadków 3 lat'),
    (7, 'brak wypadków4 lat'),
    (8, 'brak wypadków 6 lat'),
    (9, 'brak wypadków 7 lat'),
    (10, 'brak wypadków30 lat'),
    (11, 'brak wypadków 25 lat'),
    (12, 'brak wypadków8 lat'),
    (13, 'brak wypadków 9 lat'),
    (14, 'brak wypadków 12 lat');

-- Tabela Znizki_lojalnosciowa
INSERT INTO Znizki_lojalnosciowa (ID, Znizka_lojalnosciowa)
VALUES
    (5, 'ten sam ubezpieczyciel 2 lat'),
    (6, 'ten sam ubezpieczyciel 3 lat'),
    (7, 'ten sam ubezpieczyciel 4 lat'),
    (8, 'ten sam ubezpieczyciel 6 lat'),
    (9, 'ten sam ubezpieczyciel 7 lat'),
    (10, 'ten sam ubezpieczyciel 30 lat'),
    (11, 'ten sam ubezpieczyciel 25 lat'),
    (12, 'ten sam ubezpieczyciel 8 lat'),
    (13, 'ten sam ubezpieczyciel 9 lat'),
    (14, 'ten sam ubezpieczyciel 12 lat');

-- Tabela Oferta_znizek_kierowcy
INSERT INTO Oferta_zniżek_kierowcy (ID, Znizka_za_prawo_jazdy_ID, Wartosc_znizki_prawa_jazdy, Znizka_za_brak_wypadkow_ID, Wartosc_znizki_bezwypadkowej_jazdy, Znizka_lojalnosciowa_ID, Wartosc_znizki_lojalnosciowej, Od_kiedy_obowiazuje, Do_kiedy_obowiazuje)
VALUES
    (1, 1, 5, 1, 10, 1, 15, '2023-01-01', '2023-06-01'),
    (2, 2, 10, 2, 15, 2, 20, '2023-02-01', '2023-12-31'),
    (3, 3, 15, 3, 20, 3, 25, '2023-03-01', '2023-12-31'),
    (4, 2, 20, 1, 25, 1, 30, '2023-04-01', '2023-12-31'),
    (5, 1, 5, 2, 10, 2, 15, '2023-05-01', '2023-12-31'),
    (6, 2, 10, 3, 15, 3, 20, '2023-06-01', '2023-12-31'),
    (7, 3, 15, 1, 20, 1, 25, '2023-07-01', '2023-12-31'),
    (8, 4, 20, 2, 25, 2, 30, '2023-08-01', '2023-12-31'),
    (9, 1, 5, 3, 10, 3, 15, '2023-09-01', '2023-12-31'),
    (10, 2, 10, 1, 15, 1, 20, '2023-10-01', '2023-12-31'),
    (11, 3, 15, 2, 20, 2, 25, '2023-11-01', '2023-12-31'),
    (12, 4, 20, 3, 25, 3, 30, '2023-12-01', '2023-12-31'),
    (13, 1, 5, 1, 10, 1, 15, '2024-01-01', '2024-12-31'),
    (14, 2, 10, 2, 15, 2, 20, '2024-02-01', '2024-12-31'),
    (15, 2, 15, 1, 20, 3, 25, '2024-03-01', '2024-12-31'),
    (16, 4, 20, 1, 25, 1, 30, '2024-04-01', '2024-12-31'),
    (17, 1, 5, 2, 10, 2, 15, '2024-05-01', '2024-12-31'),
    (18, 2, 10, 3, 15, 3, 20, '2024-06-01', '2024-12-31'),
    (19, 3, 15, 1, 20, 1, 25, '2024-07-01', '2024-12-31'),
    (20, 4, 20, 2, 25, 2, 30, '2024-08-01', '2024-12-31'),
    (21, 8, 10, 1, 10, 1, 15, '2023-06-01', '2024-01-01');

-- Tabela Oferta_znizek_pakietu
INSERT INTO Oferta_zniżek_pakietu (ID, Znizka_za_OC, Wartosc_znizki_OC, Znizka_za_AC, Wartosc_znizki_AC, Znizka_za_NNW, Wartosc_znizki_NNW, Znizka_za_Assistance, Wartosc_znizki_Assistance, Znizka_za_ubezpieczenie_na_zycie, Wartosc_znizki_na_zycie, Znizka_za_ubezpieczenie_na_dom, Wartosc_znizki_na_dom, Od_kiedy_obowiazuje, Do_kiedy_obowiazuje)
VALUES
    (1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01', '2023-06-01'),
    (2, 1, 10, 0, 0, 0, 0, 0, 0, 1, 10, 0, 0, '2023-02-01', '2023-12-31'),
    (3, 1, 15, 1, 20, 1, 10, 1, 5, 0, 0, 1, 15, '2023-03-01', '2023-12-31'),
    (4, 1, 20, 1, 25, 1, 15, 1, 10, 1, 5, 0, 0, '2023-04-01', '2023-12-31'),
    (5, 0, 0, 1, 5, 1, 5, 0, 0, 0, 0, 0, 0, '2023-05-01', '2023-12-31'),
    (6, 1, 5, 0, 0, 0, 0, 1, 5, 1, 5, 1, 5, '2023-06-01', '2023-12-31'),
    (7, 0, 0, 1, 10, 1, 10, 1, 5, 0, 0, 1, 10, '2023-07-01', '2023-12-31'),
    (8, 1, 10, 0, 0, 1, 5, 1, 5, 1, 10, 0, 0, '2023-08-01', '2023-12-31'),
    (9, 1, 15, 1, 20, 0, 0, 0, 0, 1, 15, 1, 20, '2023-09-01', '2023-12-31'),
    (10, 0, 0, 1, 5, 1, 5, 1, 5, 1, 5, 1, 5, '2023-10-01', '2023-12-31'),
    (11, 1, 5, 0, 0, 0, 0, 1, 5, 1, 5, 1, 5, '2023-11-01', '2023-12-31'),
    (12, 1, 10, 1, 15, 1, 5, 0, 0, 1, 10, 0, 0, '2023-12-01', '2023-12-31'),
    (13, 1, 15, 1, 20, 1, 10, 1, 5, 0, 0, 1, 15, '2024-01-01', '2024-12-31'),
    (14, 1, 20, 1, 25, 1, 15, 1, 10, 1, 5, 0, 0, '2024-02-01', '2024-12-31'),
    (15, 0, 0, 1, 5, 1, 5, 1, 5, 0, 0, 0, 0, '2024-03-01', '2024-12-31'),
    (16, 1, 5, 0, 0, 0, 0, 1, 5, 1, 5, 1, 5, '2024-04-01', '2024-12-31'),
    (17, 1, 10, 1, 15, 1, 5, 0, 0, 1, 10, 0, 0, '2024-05-01', '2024-12-31'),
    (18, 1, 15, 1, 20, 1, 10, 1, 5, 0, 0, 1, 15, '2024-06-01', '2024-12-31'),
    (19, 1, 20, 1, 25, 1, 15, 1, 10, 1, 5, 0, 0, '2024-07-01', '2024-12-31'),
    (20, 0, 0, 1, 5, 1, 5, 1, 5, 1, 5, 1, 5, '2024-08-01', '2024-12-31'),
    (21, 0, 0, 1, 15, 0, 0, 0, 0, 1, 10, 0, 0, '2023-02-01', '2023-12-31');

-- Tabela Oferta_ubezpieczenia_zależna_od_kierowcy
INSERT INTO Oferta_ubezpieczenia_zależna_od_kierowcy (oferta_ubezpieczenia, zniżka_dla_kierowcy)
VALUES
    (1, 1),
    (1, 21),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);

-- Tabela Oferta_ubezpieczenia_zależna_od_pakiet
INSERT INTO Oferta_ubezpieczenia_zależna_od_pakietu (oferta_ubezpieczenia, zniżka_za_pakiet)
VALUES
    (1, 1),
    (2, 2),
    (2, 21),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);