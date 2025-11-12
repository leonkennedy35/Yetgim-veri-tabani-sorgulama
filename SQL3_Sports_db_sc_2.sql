--takımlar--old
insert into countries(name) values
('Türkiye'),('İspanya'),('İngiltere'),('Fransa'),('İtalya'),('Portekiz'),('Hollanda'),('Brezilya'),('Arjantin'),('Japonya'),('Suudi Arabistan'),('Kanada'),
('Çin'),('Rusya'),('Norveç'),('Güney Kore'),('Azerbaycan');

select * from countries

delete from countries;

ALTER SEQUENCE countries_id_seq RESTART WITH 1;

insert into countries(name) values('Türkiye'),
('Almanya'),
('İspanya'),
('İngiltere'),
('Fransa'),
('İtalya'),
('Portekiz'),
('Hollanda'),
('Brezilya'),
('Arjantin'),
('Japonya'),
('Suudi Arabistan'),
('Kanada'),
('Çin'),
('Ruysa'),
('Norveç'),
('Güney Kore'),
('Azerbaycan');


-- sponsorluklar
INSERT INTO "sponsorships" ("name", "description", "value") VALUES
('Nike', 'Global Spor Giyim ve Ekipman Sponsoru. Çeşitli ligler ve takımlar için resmi forma tedarikçisi.', 90000000.00),
('Adidas', 'FIFA Dünya Kupası Resmi Top ve Ekipman Sponsoru. Büyük kulüplerin forma sponsoru.', 85000000.00),
('Puma', 'Avrupa liglerindeki birçok takımın ve atletin resmi giyim sponsoru.', 40000000.00),
('Coca-Cola', 'Olimpiyat Oyunları ve FIFA Dünya Kupası ana global ortağı. Marka bilinirliği ve etkinlik sponsorluğu.', 100000000.00),
('PepsiCo (Lay''s/Gatorade)', 'UEFA Champions League Resmi Yiyecek ve İçecek Ortağı.', 60000000.00),
('Emirates', 'Büyük futbol kulüpleri (Real Madrid, Arsenal) forma sponsoru ve stadyum isim hakkı.', 75000000.00),
('Qatar Airways', 'FIFA ve çeşitli uluslararası turnuvalar için resmi havayolu partneri.', 65000000.00),
('Red Bull', 'Formula 1 Takım Sahibi (Red Bull Racing) ve ekstrem sporlar ana organizatörü.', 150000000.00),
('Allianz', 'Stadyum isim hakları (Allianz Arena, Allianz Stadium) ve sigorta partnerliği.', 30000000.00),
('Visa', 'Olimpiyatlar ve FIFA için Resmi Ödeme Hizmetleri Ortağı.', 50000000.00),
('MasterCard', 'UEFA Champions League ve çeşitli majör turnuvalar için resmi ödeme sponsoru.', 45000000.00),
('Heineken', 'UEFA Champions League ve Formula 1 Resmi Bira Sponsoru.', 42000000.00),
('Audi', 'Bayern Münih, Real Madrid gibi kulüplerin Premium Otomotiv Partneri.', 25000000.00),
('Rolex', 'Formula 1, Teniste Grand Slam Turnuvaları ve Golf için Resmi Zaman Tutucu.', 35000000.00),
('Samsung', 'Global Teknoloji Partneri ve eSpor turnuvaları sponsoru.', 28000000.00),
('Sony (PlayStation)', 'UEFA Champions League Resmi Oyun Konsolu ve Eğlence Partneri.', 22000000.00),
('Standard Chartered', 'Liverpool FC Ana Forma Sponsoru.', 60000000.00),
('Turkish Airlines', 'UEFA EuroLeague (Basketbol) İsim Sponsoru ve çeşitli takımların havayolu partneri.', 40000000.00),
('Rakuten', 'FC Barcelona eski ana sponsoru ve NBA Global Partneri.', 55000000.00),
('Aramco', 'Formula 1 Global Enerji Partneri.', 48000000.00),
('Bwin', 'Avrupa futbol ligleri için Resmi Bahis Partneri.', 15000000.00),
('Intel', 'Olimpiyatlar Teknoloji Partneri ve Intel Extreme Masters (eSpor) Organizatörü.', 18000000.00),
('Castrol', 'Premier League ve F1 takımları için Resmi Yağ Sponsoru.', 12000000.00),
('Hublot', 'FIFA Dünya Kupası ve Premier League Resmi Zaman Tutucusu.', 20000000.00),
('Crypto.com', 'Formula 1 ve çeşitli stadyum isim hakları (Crypto.com Arena) sponsoru.', 70000000.00);

-- branşlar
INSERT INTO "branchs" ("name") VALUES
('Futbol'),
('Basketbol'),
('Voleybol'),
('Tenis'),
('Atletizm'),
('Yüzme'),
('Formula 1'),
('Hentbol'),
('Buz Hokeyi'),
('Amerikan Futbolu'),
('Beysbol'),
('Golf'),
('Boks'),
('Güreş'),
('Judo'),
('Masa Tenisi'),
('Badminton'),
('Okçuluk'),
('Jimnastik'),
('eSpor'),
('Karma Dövüş Sanatları (MMA)'),
('Bisiklet'),
('Kayak (Alp Disiplini)'),
('Ralli'),
('MotoGP');


--takımlar
INSERT INTO "teams" ("name", "since", "team_value") VALUES
-- Futbol (Avrupa)
('Real Madrid', '1902-03-06', 0.0),
('Manchester United', '1878-01-01', 0.0),
('FC Barcelona', '1899-11-29', 0.0),
('Liverpool FC', '1892-06-03', 0.0),
('Manchester City', '1880-11-23', 0.0),
('Bayern Munich', '1900-02-27', 0.0),
('Paris Saint-Germain', '1970-08-12', 0.0),
('Chelsea FC', '1905-03-10', 0.0),
('Arsenal FC', '1886-12-01', 0.0),
('Tottenham Hotspur', '1882-09-05', 0.0),
('Juventus', '1897-11-01', 0.0),
('Borussia Dortmund', '1909-12-19', 0.0),
('Atlético Madrid', '1903-04-26', 0.0),
('Inter Milan', '1908-03-09', 0.0),
('AC Milan', '1899-12-16', 0.0),
('Ajax Amsterdam', '1900-03-18', 0.0),
('Galatasaray SK', '1905-10-30', 0.0),
('Fenerbahçe SK', '1907-05-03', 0.0),
('Beşiktaş JK', '1903-03-19', 0.0),

-- Futbol (Diğer)
('Boca Juniors', '1905-04-03', 0.0),
('River Plate', '1901-05-25', 0.0),
('Flamengo', '1895-11-17', 0.0),
('Al-Nassr', '1955-10-24', 0.0),
('Inter Miami CF', '2018-01-29', 0.0),

-- Basketbol (NBA)
('Los Angeles Lakers', '1947-01-01', 0.0),
('Golden State Warriors', '1946-01-01', 0.0),
('Boston Celtics', '1946-06-06', 0.0),
('New York Knicks', '1946-06-06', 0.0),
('Chicago Bulls', '1966-01-16', 0.0),
('Miami Heat', '1988-01-01', 0.0),

-- Basketbol (Avrupa)
('Real Madrid Baloncesto', '1931-03-08', 0.0),
('FC Barcelona Bàsquet', '1926-08-24', 0.0),
('Anadolu Efes', '1976-01-01', 0.0),
('Olympiacos B.C.', '1925-01-01', 0.0),

-- Formula 1
('Scuderia Ferrari', '1929-11-16', 0.0),
('Mercedes-AMG Petronas F1', '2010-03-14', 0.0),
('Red Bull Racing', '2004-11-15', 0.0),
('McLaren F1 Team', '1963-09-02', 0.0),
('Williams Racing', '1977-01-01', 0.0),

-- Amerikan Futbolu (NFL)
('Dallas Cowboys', '1960-01-28', 0.0),
('New England Patriots', '1959-11-16', 0.0),
('Kansas City Chiefs', '1960-08-14', 0.0),
('Green Bay Packers', '1919-08-11', 0.0),

-- Beysbol (MLB)
('New York Yankees', '1901-01-09', 0.0),
('Los Angeles Dodgers', '1883-01-01', 0.0),

-- Buz Hokeyi (NHL)
('New York Rangers', '1926-01-01', 0.0),
('Toronto Maple Leafs', '1917-11-22', 0.0),

-- eSpor
('FaZe Clan', '2010-05-30', 0.0),
('T1', '2004-01-01', 0.0),

-- Voleybol
('VakıfBank', '1986-01-01', 0.0),
('Trentino Volley', '2000-05-23', 0.0);

ALTER TABLE "leagues"
ALTER COLUMN "name" TYPE VARCHAR(150);


-- ligler
INSERT INTO "leagues" ("name", "team_count", "country_id", "sponsorship_id") VALUES
-- Futbol Ligleri
('Süper Lig', 0, 1, 18),             -- Ülke ID: 1 (Türkiye), Sponsor: Turkish Airlines
('Bundesliga', 0, 2, 9),            -- Ülke ID: 2 (Almanya), Sponsor: Allianz
('La Liga', 0, 3, 3),               -- Ülke ID: 3 (İspanya), Sponsor: Puma
('Premier League', 0, 4, 1),        -- Ülke ID: 4 (İngiltere), Sponsor: Nike
('Ligue 1', 0, 5, 21),              -- Ülke ID: 5 (Fransa), Sponsor: Bwin
('Serie A', 0, 6, 25),              -- Ülke ID: 6 (İtalya), Sponsor: Crypto.com
('Primeira Liga', 0, 7, 10),        -- Ülke ID: 7 (Portekiz), Sponsor: Visa
('Eredivisie', 0, 8, 12),           -- Ülke ID: 8 (Hollanda), Sponsor: Heineken
('Brasileirão Série A', 0, 9, 2),   -- Ülke ID: 9 (Brezilya), Sponsor: Adidas
('Argentine Primera División', 0, 10, 2), -- Ülke ID: 10 (Arjantin), Sponsor: Adidas
('J1 League', 0, 11, 15),           -- Ülke ID: 11 (Japonya), Sponsor: Samsung
('Saudi Pro League', 0, 12, 20),    -- Ülke ID: 12 (Suudi Arabistan), Sponsor: Aramco
('Canadian Premier League', 0, 13, 5),  -- Ülke ID: 13 (Kanada), Sponsor: PepsiCo
('Chinese Super League', 0, 14, 15),-- Ülke ID: 14 (Çin), Sponsor: Samsung
('Russian Premier League', 0, 15, 21),-- Ülke ID: 15 (Ruysa), Sponsor: Bwin
('K League 1', 0, 17, 15),          -- Ülke ID: 17 (Güney Kore), Sponsor: Samsung
('Azerbaijan Premier League', 0, 18, 20),-- Ülke ID: 18 (Azerbaycan), Sponsor: Aramco

-- Basketbol Ligleri
('Türkiye Basketbol Süper Ligi', 0, 1, 18), -- Ülke ID: 1 (Türkiye)
('Almanya Basketbol Ligi (BBL)', 0, 2, 9),  -- Ülke ID: 2 (Almanya)
('Liga ACB (İspanya)', 0, 3, 5),          -- Ülke ID: 3 (İspanya)
('Lega Basket Serie A (İtalya)', 0, 6, 25), -- Ülke ID: 6 (İtalya)
('LNB Pro A (Fransa)', 0, 5, 21),          -- Ülke ID: 5 (Fransa)

-- eSpor Ligleri
('LCK (League of Legends)', 0, 17, 22), -- Ülke ID: 17 (Güney Kore), Sponsor: Intel
('LPL (League of Legends)', 0, 14, 16); -- Ülke ID: 14 (Çin), Sponsor: Sony




INSERT INTO "positions" ("name", "branch_id") VALUES
-- Futbol Pozisyonları (Branş ID: 1)
('Kaleci', 1),
('Stoper', 1),
('Sağ Bek', 1),
('Sol Bek', 1),
('Defansif Orta Saha', 1),
('Merkez Orta Saha', 1),
('Ofansif Orta Saha (10 Numara)', 1),
('Sağ Kanat', 1),
('Sol Kanat', 1),
('Santrafor (Forvet)', 1),

-- Basketbol Pozisyonları (Branş ID: 2)
('Oyun Kurucu (PG)', 2),
('Şutör Gard (SG)', 2),
('Kısa Forvet (SF)', 2),
('Uzun Forvet (PF)', 2),
('Pivot (C)', 2),

-- Voleybol Pozisyonları (Branş ID: 3)
('Pasör', 3),
('Pasör Çaprazı', 3),
('Smaçör (Hücumcu)', 3),
('Orta Oyuncu', 3),
('Libero', 3),

-- Formula 1 Pozisyonları (Branş ID: 7)
('Pilot', 7),
('Yedek Pilot', 7),
('Test Sürücüsü', 7),

-- Hentbol Pozisyonları (Branş ID: 8)
('Kaleci', 8),
('Sol Kanat', 8),
('Sağ Kanat', 8),
('Pivot', 8),
('Sol Oyun Kurucu', 8),
('Sağ Oyun Kurucu', 8),
('Orta Oyun Kurucu', 8),

-- Buz Hokeyi Pozisyonları (Branş ID: 9)
('Kaleci (Goaltender)', 9),
('Defans Oyuncusu (Defenseman)', 9),
('Santrafor (Center)', 9),
('Sol Kanat (Left Winger)', 9),
('Sağ Kanat (Right Winger)', 9),

-- Amerikan Futbolu Pozisyonları (Branş ID: 10)
('Quarterback (Oyun Kurucu)', 10),
('Running Back (Koşucu)', 10),
('Wide Receiver (Açık Alıcı)', 10),
('Tight End', 10),
('Offensive Tackle (Hücum Çizgisi)', 10),
('Defensive End (Savunma Çizgisi)', 10),
('Linebacker (Savunma Ortası)', 10),
('Cornerback (Köşe Savunmacı)', 10),

-- Beysbol Pozisyonları (Branş ID: 11)
('Atıcı (Pitcher)', 11),
('Tutucu (Catcher)', 11),
('Kısa Durdurucu (Shortstop)', 11),
('Dış Saha Oyuncusu (Outfielder)', 11),

-- eSpor Pozisyonları (Branş ID: 20)
('Üst Koridor (Top Laner)', 20),
('Ormancı (Jungler)', 20),
('Orta Koridor (Mid Laner)', 20),
('Nişancı (ADC / Carry)', 20),
('Destek (Support)', 20),
('Oyun İçi Lider (IGL)', 20),

-- Ralli Pozisyonları (Branş ID: 24)
('Sürücü (Pilot)', 24),
('Yardımcı Pilot (Co-Pilot)', 24),

-- MotoGP Pozisyonları (Branş ID: 25)
('Sürücü (Rider)', 25);


INSERT INTO "teams_branches" ("team_id", "branch_id") VALUES
-- Futbol Takımları (Branş ID: 1)
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1),
(11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1),
(20, 1), (21, 1), (22, 1), (23, 1), (24, 1),
-- Basketbol Takımları (Branş ID: 2)
(25, 2), (26, 2), (27, 2), (28, 2), (29, 2), (30, 2), (31, 2), (32, 2), (33, 2), (34, 2),
-- Formula 1 Takımları (Branş ID: 7)
(35, 7), (36, 7), (37, 7), (38, 7), (39, 7),
-- Amerikan Futbolu Takımları (Branş ID: 10)
(40, 10), (41, 10), (42, 10), (43, 10),
-- Beysbol Takımları (Branş ID: 11)
(44, 11), (45, 11),
-- Buz Hokeyi Takımları (Branş ID: 9)
(46, 9), (47, 9),
-- eSpor Takımları (Branş ID: 20)
(48, 20), (49, 20),
-- Voleybol Takımları (Branş ID: 3)
(50, 3), (51, 3);



INSERT INTO "coachs" ("name", "surname", "Gender", "salary", "birth_date", "country_id", "team_id", "branch_id") VALUES
-- Futbol Koçları (Branş ID: 1)
('Carlo', 'Ancelotti', 'Erkek', 11000000.00, '1959-06-10', 6, 1, 1),
('Ruud', 'van Nistelrooy', 'Erkek', 4500000.00, '1976-07-01', 8, 2, 1),
('Hansi', 'Flick', 'Erkek', 9500000.00, '1965-02-24', 2, 3, 1),
('Arne', 'Slot', 'Erkek', 8000000.00, '1978-09-17', 8, 4, 1),
('Pep', 'Guardiola', 'Erkek', 22000000.00, '1971-01-18', 3, 5, 1),
('Vincent', 'Kompany', 'Erkek', 7000000.00, '1986-04-10', 8, 6, 1),
('Luis', 'Enrique', 'Erkek', 10000000.00, '1970-05-08', 3, 7, 1),
('Enzo', 'Maresca', 'Erkek', 6000000.00, '1980-02-10', 6, 8, 1),
('Mikel', 'Arteta', 'Erkek', 9000000.00, '1982-03-26', 3, 9, 1),
('Ange', 'Postecoglou', 'Erkek', 5500000.00, '1965-08-27', 4, 10, 1),
('Thiago', 'Motta', 'Erkek', 5000000.00, '1982-08-28', 9, 11, 1),
('Nuri', 'Şahin', 'Erkek', 3000000.00, '1988-09-05', 1, 12, 1),
('Diego', 'Simeone', 'Erkek', 25000000.00, '1970-04-28', 10, 13, 1),
('Simone', 'Inzaghi', 'Erkek', 5500000.00, '1976-04-05', 6, 14, 1),
('Paulo', 'Fonseca', 'Erkek', 4500000.00, '1973-03-05', 7, 15, 1),
('Francesco', 'Farioli', 'Erkek', 2000000.00, '1989-04-10', 6, 16, 1),
('Okan', 'Buruk', 'Erkek', 3500000.00, '1973-10-19', 1, 17, 1),
('José', 'Mourinho', 'Erkek', 10000000.00, '1963-01-26', 7, 18, 1),
('Sergen', 'Yalçın', 'Erkek', 2500000.00, '1972-10-05', 1, 19, 1),
('Diego', 'Martínez', 'Erkek', 1800000.00, '1980-12-16', 3, 20, 1),
('Martín', 'Demichelis', 'Erkek', 2000000.00, '1980-12-20', 10, 21, 1),
('Tite', 'Bacchi', 'Erkek', 4000000.00, '1961-05-25', 9, 22, 1),
('Stefano', 'Pioli', 'Erkek', 4000000.00, '1965-10-20', 6, 23, 1),
('Javier', 'Mascherano', 'Erkek', 3000000.00, '1984-06-08', 10, 24, 1),
-- Basketbol Koçları (Branş ID: 2)
('JJ', 'Redick', 'Erkek', 8000000.00, '1984-06-24', 13, 25, 2),
('Steve', 'Kerr', 'Erkek', 9500000.00, '1965-09-27', 13, 26, 2),
('Joe', 'Mazzulla', 'Erkek', 5000000.00, '1988-06-30', 13, 27, 2),
('Tom', 'Thibodeau', 'Erkek', 7000000.00, '1958-01-17', 13, 28, 2),
('Billy', 'Donovan', 'Erkek', 6000000.00, '1965-05-30', 13, 29, 2),
('Erik', 'Spoelstra', 'Erkek', 8500000.00, '1970-11-01', 13, 30, 2),
('Chus', 'Mateo', 'Erkek', 1200000.00, '1969-01-23', 3, 31, 2),
('Joan', 'Peñarroya', 'Erkek', 1000000.00, '1969-04-20', 3, 32, 2),
('Tomislav', 'Mijatović', 'Erkek', 800000.00, '1979-02-23', 1, 33, 2),
('Georgios', 'Bartzokas', 'Erkek', 1500000.00, '1965-06-11', 8, 34, 2),
-- F1 Takım Patronları (Branş ID: 7)
('Frédéric', 'Vasseur', 'Erkek', 6000000.00, '1968-05-28', 5, 35, 7),
('Toto', 'Wolff', 'Erkek', 15000000.00, '1972-01-12', 2, 36, 7),
('Christian', 'Horner', 'Erkek', 10000000.00, '1973-11-16', 4, 37, 7),
('Andrea', 'Stella', 'Erkek', 5000000.00, '1971-02-22', 6, 38, 7),
('James', 'Vowles', 'Erkek', 3000000.00, '1979-06-20', 4, 39, 7),
-- NFL Koçları (Branş ID: 10)
('Mike', 'McCarthy', 'Erkek', 7000000.00, '1963-11-10', 13, 40, 10),
('Jerod', 'Mayo', 'Erkek', 5000000.00, '1986-02-23', 13, 41, 10),
('Andy', 'Reid', 'Erkek', 12000000.00, '1958-03-19', 13, 42, 10),
('Matt', 'LaFleur', 'Erkek', 6500000.00, '1979-11-03', 13, 43, 10),
-- MLB Menajerleri (Branş ID: 11)
('Aaron', 'Boone', 'Erkek', 4000000.00, '1973-03-09', 13, 44, 11),
('Dave', 'Roberts', 'Erkek', 3500000.00, '1972-05-31', 11, 45, 11),
-- NHL Koçları (Branş ID: 9)
('Peter', 'Laviolette', 'Erkek', 4900000.00, '1964-12-07', 13, 46, 9),
('Craig', 'Berube', 'Erkek', 3000000.00, '1965-12-17', 13, 47, 9),
-- eSpor Koçları (Branş ID: 20)
('Robert', 'Dahlström', 'Erkek', 250000.00, '1991-01-20', 8, 48, 20),
('Kim', 'Jeong-gyun (kkOma)', 'Erkek', 700000.00, '1985-12-23', 17, 49, 20),
-- Voleybol Koçları (Branş ID: 3)
('Giovanni', 'Guidetti', 'Erkek', 1500000.00, '1972-09-20', 6, 50, 3),
('Fabio', 'Soli', 'Erkek', 400000.00, '1979-09-29', 6, 51, 3);




INSERT INTO "teams_sponsorships" ("team_id", "sponsorship_id") VALUES
-- Büyük Futbol Kulüpleri ve Global Sponsorları
(1, 6),  -- Real Madrid (ID:1) -> Emirates (ID:6)
(1, 2),  -- Real Madrid (ID:1) -> Adidas (ID:2)
(3, 1),  -- FC Barcelona (ID:3) -> Nike (ID:1)
(4, 17), -- Liverpool FC (ID:4) -> Standard Chartered (ID:17)
(4, 1),  -- Liverpool FC (ID:4) -> Nike (ID:1)
(5, 3),  -- Manchester City (ID:5) -> Puma (ID:3)
(6, 2),  -- Bayern Munich (ID:6) -> Adidas (ID:2)
(6, 9),  -- Bayern Munich (ID:6) -> Allianz (ID:9)
(6, 13), -- Bayern Munich (ID:6) -> Audi (ID:13)
(7, 7),  -- Paris Saint-Germain (ID:7) -> Qatar Airways (ID:7)
(7, 1),  -- Paris Saint-Germain (ID:7) -> Nike (ID:1)
(9, 6),  -- Arsenal FC (ID:9) -> Emirates (ID:6)
(9, 2),  -- Arsenal FC (ID:9) -> Adidas (ID:2)
(15, 3), -- AC Milan (ID:15) -> Puma (ID:3)
(14, 1), -- Inter Milan (ID:14) -> Nike (ID:1)
(11, 2), -- Juventus (ID:11) -> Adidas (ID:2)
(12, 3), -- Borussia Dortmund (ID:12) -> Puma (ID:3)

-- Türkiye Ligi Sponsorlukları
(17, 1), -- Galatasaray SK (ID:17) -> Nike (ID:1)
(18, 3), -- Fenerbahçe SK (ID:18) -> Puma (ID:3)
(19, 2), -- Beşiktaş JK (ID:19) -> Adidas (ID:2)

-- Diğer Futbol Ligleri
(16, 2), -- Ajax Amsterdam (ID:16) -> Adidas (ID:2)
(23, 1), -- Al-Nassr (ID:23) -> Nike (ID:1)
(24, 2), -- Inter Miami CF (ID:24) -> Adidas (ID:2)
(20, 2), -- Boca Juniors (ID:20) -> Adidas (ID:2)

-- Basketbol Sponsorlukları (NBA & EuroLeague)
(25, 1),  -- Los Angeles Lakers (ID:25) -> Nike (ID:1)
(25, 25), -- Los Angeles Lakers (ID:25) -> Crypto.com (ID:25) (Arena İsim Hakkı)
(26, 1),  -- Golden State Warriors (ID:26) -> Nike (ID:1)
(27, 1),  -- Boston Celtics (ID:27) -> Nike (ID:1)
(29, 1),  -- Chicago Bulls (ID:29) -> Nike (ID:1)
(33, 18), -- Anadolu Efes (ID:33) -> Turkish Airlines (ID:18)
(34, 5),  -- Olympiacos B.C. (ID:34) -> PepsiCo (ID:5)
(31, 2),  -- Real Madrid Baloncesto (ID:31) -> Adidas (ID:2)

-- Formula 1 Takım Sponsorlukları
(35, 3),  -- Scuderia Ferrari (ID:35) -> Puma (ID:3)
(36, 3),  -- Mercedes-AMG Petronas (ID:36) -> Puma (ID:3)
(36, 23), -- Mercedes-AMG Petronas (ID:36) -> Castrol (ID:23)
(37, 8),  -- Red Bull Racing (ID:37) -> Red Bull (ID:8) (Ana Sponsor/Sahip)
(37, 20), -- Red Bull Racing (ID:37) -> Aramco (ID:20)
(38, 15), -- McLaren F1 Team (ID:38) -> Samsung (ID:15)

-- Voleybol
(50, 18), -- VakıfBank (ID:50) -> Turkish Airlines (ID:18) (CEV Sponsorluğu)

-- eSpor
(49, 8);  -- T1 (ID:49) -> Red Bull (ID:8)



INSERT INTO "team_leagues" ("team_id", "league_id") VALUES
-- Futbol - La Liga (Lig ID: 3)
(1, 3),   -- Real Madrid
(3, 3),   -- FC Barcelona
(13, 3),  -- Atlético Madrid

-- Futbol - Premier League (Lig ID: 4)
(2, 4),   -- Manchester United
(4, 4),   -- Liverpool FC
(5, 4),   -- Manchester City
(8, 4),   -- Chelsea FC
(9, 4),   -- Arsenal FC
(10, 4),  -- Tottenham Hotspur

-- Futbol - Bundesliga (Lig ID: 2)
(6, 2),   -- Bayern Munich
(12, 2),  -- Borussia Dortmund

-- Futbol - Serie A (Lig ID: 6)
(11, 6),  -- Juventus
(14, 6),  -- Inter Milan
(15, 6),  -- AC Milan

-- Futbol - Ligue 1 (Lig ID: 5)
(7, 5),   -- Paris Saint-Germain

-- Futbol - Süper Lig (Lig ID: 1)
(17, 1),  -- Galatasaray SK
(18, 1),  -- Fenerbahçe SK
(19, 1),  -- Beşiktaş JK

-- Futbol - Diğer Ulusal Ligler
(16, 8),  -- Ajax Amsterdam (Eredivisie, Lig ID: 8)
(20, 10), -- Boca Juniors (Argentine, Lig ID: 10)
(21, 10), -- River Plate (Argentine, Lig ID: 10)
(22, 9),  -- Flamengo (Brasileirão, Lig ID: 9)
(23, 12), -- Al-Nassr (Saudi Pro League, Lig ID: 12)

-- Basketbol - Ulusal Ligler
(31, 20), -- Real Madrid Baloncesto (Liga ACB, Lig ID: 20)
(32, 20), -- FC Barcelona Bàsquet (Liga ACB, Lig ID: 20)
(33, 18), -- Anadolu Efes (Türkiye BSL, Lig ID: 18)

-- eSpor - Ulusal Ligler
(49, 23); -- T1 (LCK, Lig ID: 23)



INSERT INTO "players" ("name", "surname", "number", "player_value", "Gender", "salary", "birth_date", "team_id", "country_id") VALUES
-- Fenerbahçe SK (Takım ID: 18, Ülke ID'leri: 1=Türkiye, 9=Brezilya, 1=Varsayılan)
('Edin', 'Džeko', '9', 4000000.00, 'Erkek', 4200000, '1986-03-17', 18, 1),  -- (Bosna -> 1 (TR) olarak atandı)
('Dušan', 'Tadić', '10', 5500000.00, 'Erkek', 4200000, '1988-11-20', 18, 1),  -- (Sırbistan -> 1 (TR) olarak atandı)
('Fred', 'Frederico Rodrigues', '35', 18000000.00, 'Erkek', 4500000, '1993-03-05', 18, 9),
('Sebastian', 'Szymański', '53', 20000000.00, 'Erkek', 2500000, '1999-05-10', 18, 1), -- (Polonya -> 1 (TR) olarak atandı)
('İrfan Can', 'Kahveci', '17', 9000000.00, 'Erkek', 1500000, '1995-07-15', 18, 1),
('Ferdi', 'Kadıoğlu', '7', 21000000.00, 'Erkek', 1800000, '1999-10-07', 18, 1),
('Bright', 'Osayi-Samuel', '21', 8500000.00, 'Erkek', 1000000, '1997-12-31', 18, 1), -- (Nijerya -> 1 (TR) olarak atandı)
('Dominik', 'Livaković', '40', 11000000.00, 'Erkek', 1500000, '1995-01-09', 18, 1), -- (Hırvatistan -> 1 (TR) olarak atandı)

-- Galatasaray SK (Takım ID: 17, Ülke ID'leri: 10=Arjantin, 1=Türkiye)
('Mauro', 'Icardi', '9', 18000000.00, 'Erkek', 6000000, '1993-02-19', 17, 10),
('Kerem', 'Aktürkoğlu', '7', 15000000.00, 'Erkek', 1200000, '1998-10-21', 17, 1),
('Lucas', 'Torreira', '34', 16000000.00, 'Erkek', 2750000, '1996-02-11', 17, 1), -- (Uruguay -> 1 (TR) olarak atandı)
('Barış Alper', 'Yılmaz', '53', 13000000.00, 'Erkek', 800000, '2000-05-23', 17, 1),

-- Real Madrid (Takım ID: 1, Ülke ID'leri: 9=Brezilya, 4=İngiltere, 1=Türkiye, 2=Almanya, 5=Fransa)
('Vinícius', 'Júnior', '7', 180000000.00, 'Erkek', 20000000, '2000-07-12', 1, 9),
('Jude', 'Bellingham', '5', 180000000.00, 'Erkek', 20000000, '2003-06-29', 1, 4),
('Arda', 'Güler', '24', 30000000.00, 'Erkek', 5000000, '2005-02-25', 1, 1),
('Antonio', 'Rüdiger', '22', 25000000.00, 'Erkek', 9000000, '1993-03-03', 1, 2),
('Kylian', 'Mbappé', '9', 180000000.00, 'Erkek', 25000000, '1998-12-20', 1, 5),

-- Manchester City (Takım ID: 5, Ülke ID'leri: 16=Norveç, 8=Hollanda(Belçika için), 3=İspanya, 4=İngiltere)
('Erling', 'Haaland', '9', 180000000.00, 'Erkek', 22000000, '2000-07-21', 5, 16),
('Kevin', 'De Bruyne', '17', 50000000.00, 'Erkek', 20000000, '1991-06-28', 5, 8), -- (Belçika -> 8 (Hollanda) olarak atandı)
('Rodri', 'Rodrigo Hernández', '16', 120000000.00, 'Erkek', 15000000, '1996-06-22', 5, 3),
('Phil', 'Foden', '47', 150000000.00, 'Erkek', 12000000, '2000-05-28', 5, 4),

-- Al-Nassr (Takım ID: 23, Ülke ID'leri: 7=Portekiz)
('Cristiano', 'Ronaldo', '7', 15000000.00, 'Erkek', 200000000, '1985-02-05', 23, 7),
('Sadio', 'Mané', '10', 15000000.00, 'Erkek', 40000000, '1992-04-10', 23, 12), -- (Senegal -> 12 (Suudi A.) olarak atandı)

-- Inter Miami CF (Takım ID: 24, Ülke ID'leri: 10=Arjantin, 3=İspanya)
('Lionel', 'Messi', '10', 30000000.00, 'Erkek', 54000000, '1987-06-24', 24, 10),
('Sergio', 'Busquets', '5', 1500000.00, 'Erkek', 8000000, '1988-07-16', 24, 3),

-- Los Angeles Lakers (Takım ID: 25, Ülke ID'leri: 13=Kanada (USA için varsayılan))
('LeBron', 'James', '23', 30000000.00, 'Erkek', 49500000, '1984-12-30', 25, 13),
('Anthony', 'Davis', '3', 50000000.00, 'Erkek', 43200000, '1993-03-11', 25, 13),

-- Golden State Warriors (Takım ID: 26, Ülke ID'leri: 13=Kanada (USA için varsayılan))
('Stephen', 'Curry', '30', 45000000.00, 'Erkek', 51900000, '1988-03-14', 26, 13),
('Klay', 'Thompson', '11', 25000000.00, 'Erkek', 43200000, '1990-02-08', 26, 13),

-- Anadolu Efes (Takım ID: 33, Ülke ID'leri: 13=Kanada (USA için), 1=Türkiye)
('Shane', 'Larkin', '0', 10000000.00, 'Erkek', 4000000, '1992-10-02', 33, 13), -- (USA -> 13 (Kanada) olarak atandı)
('Ercan', 'Osmani', '23', 2000000.00, 'Erkek', 500000, '1998-08-04', 33, 1),

-- Scuderia Ferrari (Takım ID: 35, Ülke ID'leri: 5=Fransa, 4=İngiltere)
('Charles', 'Leclerc', '16', 80000000.00, 'Erkek', 30000000, '1997-10-16', 35, 5), -- (Monako -> 5 (Fransa) olarak atandı)
('Lewis', 'Hamilton', '44', 45000000.00, 'Erkek', 50000000, '1985-01-07', 35, 4),

-- Red Bull Racing (Takım ID: 37, Ülke ID'leri: 8=Hollanda)
('Max', 'Verstappen', '1', 100000000.00, 'Erkek', 55000000, '1997-09-30', 37, 8),
('Sergio', 'Pérez', '11', 20000000.00, 'Erkek', 10000000, '1990-01-26', 37, 13), -- (Meksika -> 13 (Kanada) olarak atandı)

-- Dallas Cowboys (Takım ID: 40, Ülke ID'leri: 13=Kanada (USA için))
('Dak', 'Prescott', '4', 60000000.00, 'Erkek', 40000000, '1993-07-29', 40, 13),
('CeeDee', 'Lamb', '88', 70000000.00, 'Erkek', 15000000, '1999-04-08', 40, 13),

-- T1 (eSpor) (Takım ID: 49, Ülke ID'leri: 17=Güney Kore)
('Sang-hyeok', 'Lee (Faker)', '10', 25000000.00, 'Erkek', 3000000, '1996-05-07', 49, 17),
('Min-hyeong', 'Ryu (Keria)', '12', 5000000.00, 'Erkek', 1000000, '2002-10-14', 49, 17),
('Min-seok', 'Choi (Zeus)', '9', 6000000.00, 'Erkek', 1000000, '2004-01-31', 49, 17),

-- VakıfBank (Voleybol) (Takım ID: 50, Ülke ID'leri: 9=Brezilya, 1=Türkiye, 13=Kanada(USA için))
('Gabriela', 'Guimarães (Gabi)', '10', 2000000.00, 'Kadın', 1000000, '1994-05-19', 50, 9),
('Zehra', 'Güneş', '18', 1500000.00, 'Kadın', 800000, '1999-07-07', 50, 1),
('Jordan', 'Thompson', '11', 1000000.00, 'Kadın', 700000, '1997-05-05', 50, 13), -- (USA -> 13 (Kanada) olarak atandı)
('Cansu', 'Özbay', '3', 800000.00, 'Kadın', 600000, '1996-10-17', 50, 1);


INSERT INTO "players_positions" ("player_id", "position_id") VALUES
-- Fenerbahçe Oyuncuları (Player ID: 1-8)
(1, 10), -- Edin Džeko -> Santrafor (Pozisyon ID: 10)
(2, 9),  -- Dušan Tadić -> Sol Kanat (Pozisyon ID: 9)
(3, 6),  -- Fred -> Merkez Orta Saha (Pozisyon ID: 6)
(4, 7),  -- Sebastian Szymański -> Ofansif Orta Saha (Pozisyon ID: 7)
(5, 8),  -- İrfan Can Kahveci -> Sağ Kanat (Pozisyon ID: 8)
(6, 4),  -- Ferdi Kadıoğlu -> Sol Bek (Pozisyon ID: 4)
(7, 3),  -- Bright Osayi-Samuel -> Sağ Bek (Pozisyon ID: 3)
(8, 1),  -- Dominik Livaković -> Kaleci (Pozisyon ID: 1)

-- Galatasaray Oyuncuları (Player ID: 9-12)
(9, 10), -- Mauro Icardi -> Santrafor (Pozisyon ID: 10)
(10, 9), -- Kerem Aktürkoğlu -> Sol Kanat (Pozisyon ID: 9)
(11, 5), -- Lucas Torreira -> Defansif Orta Saha (Pozisyon ID: 5)
(12, 8), -- Barış Alper Yılmaz -> Sağ Kanat (Pozisyon ID: 8)

-- Real Madrid Oyuncuları (Player ID: 13-17)
(13, 9), -- Vinícius Júnior -> Sol Kanat (Pozisyon ID: 9)
(14, 7), -- Jude Bellingham -> Ofansif Orta Saha (Pozisyon ID: 7)
(15, 7), -- Arda Güler -> Ofansif Orta Saha (Pozisyon ID: 7)
(16, 2), -- Antonio Rüdiger -> Stoper (Pozisyon ID: 2)
(17, 10),-- Kylian Mbappé -> Santrafor (Pozisyon ID: 10)

-- Manchester City Oyuncuları (Player ID: 18-21)
(18, 10),-- Erling Haaland -> Santrafor (Pozisyon ID: 10)
(19, 7), -- Kevin De Bruyne -> Ofansif Orta Saha (Pozisyon ID: 7)
(20, 5), -- Rodri -> Defansif Orta Saha (Pozisyon ID: 5)
(21, 7), -- Phil Foden -> Ofansif Orta Saha (Pozisyon ID: 7)

-- Al-Nassr & Inter Miami (Player ID: 22-25)
(22, 10),-- Cristiano Ronaldo -> Santrafor (Pozisyon ID: 10)
(23, 9), -- Sadio Mané -> Sol Kanat (Pozisyon ID: 9)
(24, 10),-- Lionel Messi -> Santrafor (Pozisyon ID: 10)
(25, 5), -- Sergio Busquets -> Defansif Orta Saha (Pozisyon ID: 5)

-- Basketbol Oyuncuları (Player ID: 26-31)
(26, 13),-- LeBron James -> Kısa Forvet (SF) (Pozisyon ID: 13)
(27, 14),-- Anthony Davis -> Uzun Forvet (PF) (Pozisyon ID: 14)
(28, 11),-- Stephen Curry -> Oyun Kurucu (PG) (Pozisyon ID: 11)
(29, 12),-- Klay Thompson -> Şutör Gard (SG) (Pozisyon ID: 12)
(30, 11),-- Shane Larkin -> Oyun Kurucu (PG) (Pozisyon ID: 11)
(31, 14),-- Ercan Osmani -> Uzun Forvet (PF) (Pozisyon ID: 14)

-- F1 Pilotları (Player ID: 32-35)
(32, 21),-- Charles Leclerc -> Pilot (Pozisyon ID: 21)
(33, 21),-- Lewis Hamilton -> Pilot (Pozisyon ID: 21)
(34, 21),-- Max Verstappen -> Pilot (Pozisyon ID: 21)
(35, 21),-- Sergio Pérez -> Pilot (Pozisyon ID: 21)

-- NFL Oyuncuları (Player ID: 36-37)
(36, 38),-- Dak Prescott -> Quarterback (Pozisyon ID: 38)
(37, 40),-- CeeDee Lamb -> Wide Receiver (Pozisyon ID: 40)

-- eSpor Oyuncuları (Player ID: 38-40)
(38, 52),-- Faker -> Orta Koridor (Pozisyon ID: 52)
(39, 54),-- Keria -> Destek (Pozisyon ID: 54)
(40, 50),-- Zeus -> Üst Koridor (Pozisyon ID: 50)

-- Voleybol Oyuncuları (Player ID: 41-44)
(41, 18),-- Gabi -> Smaçör (Pozisyon ID: 18)
(42, 19),-- Zehra Güneş -> Orta Oyuncu (Pozisyon ID: 19)
(43, 17),-- Jordan Thompson -> Pasör Çaprazı (Pozisyon ID: 17)
(44, 16);-- Cansu Özbay -> Pasör (Pozisyon ID: 16)



select * from countries;
select * from sponsorships;
select * from branchs;
select * from teams;
select * from leagues;
select * from positions;
select * from teams_branches;
select * from coachs;
select * from teams_sponsorships;
select * from team_leagues;
select * from players;
select * from players_positions;








    
select * from countries;
select * from sponsorships;
select * from branchs;
select * from teams;
select * from leagues;
select * from positions;
select * from teams_branches;
select * from coachs;
select * from teams_sponsorships;
select * from team_leagues;
select * from players;
select * from players_positions;

select * from players;
select * from players_positions;
select * from positions;

-- Edin dzeko nun mevkisine ek olarak sağ kanat ve sol kanat değerlerini de eklemek istiyoruz.



insert into players_positions(player_id,position_id) values(1,8), (1,9);

select * from players where  id = 1;
select * from players_positions where player_id =1;
select * from positions;


select * from players where  id = 17;
select * from players_positions  where player_id =17;
select * from positions where id=10;

