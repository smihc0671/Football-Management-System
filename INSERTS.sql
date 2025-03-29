SET IDENTITY_INSERT League ON;
SET IDENTITY_INSERT League OFF;
INSERT INTO League (ID,LeagueName, Season) VALUES
(1,'Süper Lig', '2024-2025'),
(2,'Premier Lig', '2024-2025'),
(3,'La Liga', '2024-2025');

SET IDENTITY_INSERT Team ON;
SET IDENTITY_INSERT Team OFF;

-- Takımlar ve futbolcular
INSERT INTO Team (ID, Name, Coach, TeamPlayers, TotalGoal, LeagueID)
VALUES
(1, 'Galatasaray', 'Okan Buruk', 'Mauro Icardi, Dries Mertens, Lucas Torreira', 0, 1),
(2, 'Fenerbahçe', 'Jorge Jesus', 'Enner Valencia, İrfan Can Kahveci, Mesut Özil', 0, 1),
(3, 'Beşiktaş', 'Şenol Güneş', 'Cenk Tosun, Rachid Ghezzal, Josef de Souza', 0, 1),
(4, 'Trabzonspor', 'Abdullah Avcı', 'Enis Bardhi, Anthony Nwakaeme, Uğurcan Çakır', 0, 1),
(5, 'Başakşehir', 'Emre Belözoğlu', 'Edin Višća, Stefano Okaka, Fredrik Gulbrandsen', 0, 1),
(6, 'Konya', 'İsmail Kartal', 'Umaro Embalo, Adil Demirbağ, Marcin Wasilewski', 0, 1),
(7, 'Sivasspor', 'Riza Çalımbay', 'Max Gradel, Hakan Arslan, Alfreð Finnbogason', 0, 1),
(8, 'Antalyaspor', 'Nuri Şahin', 'Fredy, Jean Armel Drolé, Haji Wright', 0, 1),
(9, 'Göztepe', 'Ümit Karan', 'Serdar Gürler, Halil Akbunar, Gökhan Gönül', 0, 1),
(10, 'Yeni Malatyaspor', 'Marius Şumudică', 'Benjamin Tetteh, Kayode Olanrewaju, Salim Cissé', 0, 1),
(11, 'Kasımpaşa', 'Shota Arveladze', 'Enzo Roco, Fousseni Diabaté, Ahmed Hassan', 0, 1),
(12, 'Çaykur Rizespor', 'Bülent Uygun', 'Skoda, Oğulcan Çağlayan, Yannick Bolasie', 0, 1),
(13, 'Alanyaspor', 'Francesco Farioli', 'Wilfred Ndidi, Adam Bareiro, Efecan Karaca', 0, 1),
(14, 'Adana Demirspor', 'Vincenzo Montella', 'Mario Balotelli, Emre Akbaba, Younès Belhanda', 0, 1),
(15, 'MKE Ankaragücü', 'Tolunay Kafkas', 'Ali Sowe, Ömer Ali Şahiner, Gerson Rodrigues', 0, 1),
(16, 'Samsunspor', 'Çetin Sönmez', 'Tolgahan Acar, Yusuf Erdoğan, Taner Yalçın', 0, 1),
(17, 'İstanbulspor', 'Fatih Tekke', 'Alican Adnan, Enis Destan, Mamadou Diarra', 0, 1),
(18, 'Gaziantep FK', 'Erol Bulut', 'Frey, Ogün Gümüşdağ, Gökhan İnler', 0, 1),
(19, 'Kayserispor', 'Samet Aybaba', 'Bernard Mensah, Mame Thiam, Danijel Milić', 0, 1),
(20, 'Rizespor', 'Saffet Sancaklı', 'Vanja Ivesa, Andrea Poli, Leandro Castán', 0, 1),

-- Premier Lig Takımları (20-40 arası ID)
(21, 'Arsenal', 'Mikel Arteta', 'Martin Ødegaard, Bukayo Saka, Gabriel Jesus', 0, 2),
(22, 'Chelsea', 'Graham Potter', 'Mason Mount, Raheem Sterling, Pierre-Emerick Aubameyang', 0, 2),
(23, 'Liverpool', 'Jürgen Klopp', 'Mohamed Salah, Virgil van Dijk, Alisson Becker', 0, 2),
(24, 'Manchester City', 'Pep Guardiola', 'Erling Haaland, Kevin De Bruyne, Jack Grealish', 0, 2),
(25, 'Manchester United', 'Erik ten Hag', 'Bruno Fernandes, Marcus Rashford, Cristiano Ronaldo', 0, 2),
(26, 'Tottenham Hotspur', 'Antonio Conte', 'Harry Kane, Son Heung-min, Richarlison', 0, 2),
(27, 'Leicester City', 'Brendan Rodgers', 'James Maddison, Jamie Vardy, Youri Tielemans', 0, 2),
(28, 'West Ham United', 'David Moyes', 'Declan Rice, Jarrod Bowen, Gianluca Scamacca', 0, 2),
(29, 'Aston Villa', 'Unai Emery', 'Ollie Watkins, Emiliano Martínez, Leon Bailey', 0, 2),
(30, 'Everton', 'Frank Lampard', 'Dominic Calvert-Lewin, Jordan Pickford, Alex Iwobi', 0, 2),
(31, 'Wolverhampton', 'Bruno Lage', 'Raúl Jiménez, Daniel Podence, João Moutinho', 0, 2),
(32, 'Newcastle United', 'Eddie Howe', 'Callum Wilson, Bruno Guimarães, Kieran Trippier', 0, 2),
(33, 'Leeds United', 'Jesse Marsch', 'Rodrigo Moreno, Raphinha, Patrick Bamford', 0, 2),
(34, 'Brighton', 'Roberto De Zerbi', 'Leandro Trossard, Moisés Caicedo, Alexis Mac Allister', 0, 2),
(35, 'Southampton', 'Ralph Hasenhüttl', 'James Ward-Prowse, Che Adams, Adam Armstrong', 0, 2),
(36, 'Crystal Palace', 'Patrick Vieira', 'Wilfried Zaha, Eberechi Eze, Jordan Ayew', 0, 2),
(37, 'Nottingham Forest', 'Steve Cooper', 'Taiwo Awoniyi, Brennan Johnson, Morgan Gibbs-White', 0, 2),
(38, 'Brentford', 'Thomas Frank', 'Ivan Toney, Bryan Mbeumo, Christian Nørgaard', 0, 2),
(39, 'Fulham', 'Marco Silva', 'Aleksandar Mitrovic, Andreas Pereira, Bobby De Cordova-Reid', 0, 2),
(40, 'Bournemouth', 'Gary O’Neil', 'Dominic Solanke, Philip Billing, Jefferson Lerma', 0, 2),

-- La Liga Takımları (41-60 arası ID)
(41, 'Real Madrid', 'Carlo Ancelotti', 'Karim Benzema, Luka Modrić, Vinícius Júnior', 0, 3),
(42, 'FC Barcelona', 'Xavi Hernández', 'Robert Lewandowski, Gerard Piqué, Pedri', 0, 3),
(43, 'Atlético Madrid', 'Diego Simeone', 'Antoine Griezmann, João Félix, Jan Oblak', 0, 3),
(44, 'Sevilla FC', 'José Luis Mendilibar', 'Youssef En-Nesyri, Ivan Rakitic, Joan Jordán', 0, 3),
(45, 'Real Sociedad', 'Imanol Alguacil', 'Alexander Isak, Mikel Merino, David Silva', 0, 3),
(46, 'Real Betis', 'Manuel Pellegrini', 'Nabil Fekir, Borja Iglesias, Sergio Canales', 0, 3),
(47, 'Villarreal CF', 'Quique Setién', 'Gerard Moreno, Dani Parejo, Pau Torres', 0, 3),
(48, 'Athletic Club', 'Ernesto Valverde', 'Iñaki Williams, Unai Simón, Mikel Vesga', 0, 3),
(49, 'Valencia CF', 'Gennaro Gattuso', 'Edinson Cavani, José Gayà, Hugo Guillamón', 0, 3),
(50, 'Celta Vigo', 'Carlos Carvalhal', 'Iago Aspas, Gabri Veiga, Denis Suárez', 0, 3),
(51, 'Espanyol', 'Diego Martínez', 'Raúl de Tomás, Sergi Darder, Leandro Cabrera', 0, 3),
(52, 'Getafe CF', 'Sanchez Flores', 'Enes Ünal, Djene Dakonam, Jaime Mata', 0, 3),
(53, 'Mallorca', 'Javier Aguirre', 'Vedat Muriqi, Takefusa Kubo, Antonio Raíllo', 0, 3),
(54, 'Rayo Vallecano', 'Andoni Iraola', 'Radamel Falcao, Álvaro García, Isi Palazón', 0, 3),
(55, 'Almería', 'Rubí', 'Lázaro, Umar Sadiq, Antonio Puertas', 0, 3),
(56, 'Girona', 'Michel Sánchez', 'Cristhian Stuani, Viktor Tsyhankov, Oriol Romeu', 0, 3),
(57, 'Elche CF', 'Francisco Rodríguez', 'Lucas Boyé, Pere Milla, Edgar Badía', 0, 3),
(58, 'Cadiz CF', 'Sergio González', 'Alvaro Negredo, Álex Fernández, Isaac Carcelén', 0, 3),
(59, 'Vallecano', 'Óscar Trejo', 'Luis García, David Morillas, Lito', 0, 3),
(60, 'Osasuna', 'Jagoba Arrasate', 'Chimy Ávila, David García, Rubén García', 0, 3);

SET IDENTITY_INSERT Player ON;
SET IDENTITY_INSERT Player OFF;
-- 1. Galatasaray
INSERT INTO Player (ID, Name, Age, Position, Stats, TeamID) VALUES
(1, 'Fernando Muslera', 37, 'Goalkeeper', 87, 1),
(2, 'Sofiane Feghouli', 34, 'Winger', 81, 1),
(3, 'Ryan Babel', 37, 'Winger', 80, 1),
(4, 'Marcao', 27, 'Defender', 83, 1),
(5, 'Kerem Aktürkoğlu', 24, 'Forward', 84, 1),
(6, 'Mostafa Mohamed', 26, 'Forward', 82, 1),
(7, 'Taylan Antalyalı', 26, 'Midfielder', 81, 1),
(8, 'Arda Turan', 37, 'Midfielder', 79, 1),
(9, 'Okan Kocuk', 27, 'Goalkeeper', 80, 1),
(10, 'Emre Akbaba', 31, 'Midfielder', 81, 1),
(11, 'Cicaldau', 25, 'Midfielder', 82, 1);

-- 2. Fenerbahçe
INSERT INTO Player (ID, Name, Age, Position, Stats, TeamID) VALUES
(12, 'Altay Bayındır', 25, 'Goalkeeper', 85, 2),
(13, 'İrfan Can Kahveci', 28, 'Midfielder', 82, 2),
(14, 'Enner Valencia', 34, 'Forward', 84, 2),
(15, 'Mert Hakan Yandaş', 29, 'Midfielder', 81, 2),
(16, 'Josef de Souza', 34, 'Midfielder', 83, 2),
(17, 'Ferdi Kadıoğlu', 24, 'Winger', 80, 2),
(18, 'Diego Rossi', 26, 'Forward', 82, 2),
(19, 'Hasan Ali Kaldırım', 34, 'Defender', 80, 2),
(20, 'Max Kruse', 35, 'Forward', 85, 2),
(21, 'Kim Min-jae', 27, 'Defender', 87, 2),
(22, 'Attila Szalai', 25, 'Defender', 83, 2);

-- 3. Beşiktaş
INSERT INTO Player (ID, Name, Age, Position, Stats, TeamID) VALUES
(23, 'Mert Günok', 33, 'Goalkeeper', 80, 3),
(24, 'Atiba Hutchinson', 41, 'Midfielder', 84, 3),
(25, 'Cyle Larin', 28, 'Forward', 82, 3),
(26, 'Rachid Ghezzal', 31, 'Winger', 83, 3),
(27, 'Valentin Rosier', 26, 'Defender', 80, 3),
(28, 'Enzo Roco', 31, 'Defender', 81, 3),
(29, 'Mohammed Al-Breik', 29, 'Defender', 80, 3),
(30, 'Alex Teixeira', 34, 'Midfielder', 85, 3),
(31, 'Miralem Pjanic', 33, 'Midfielder', 87, 3),
(32, 'Vincent Aboubakar', 32, 'Forward', 84, 3),
(33, 'Domagoj Vida', 35, 'Defender', 82, 3);

-- 4. Trabzonspor
INSERT INTO Player (ID, Name, Age, Position, Stats, TeamID) VALUES
(34, 'Uğurcan Çakır', 27, 'Goalkeeper', 86, 4),
(35, 'Vitor Hugo', 32, 'Defender', 83, 4),
(36, 'Marcos Antônio', 25, 'Midfielder', 81, 4),
(37, 'Anastasios Bakasetas', 30, 'Midfielder', 82, 4),
(38, 'Abdülkadir Ömür', 25, 'Winger', 84, 4),
(39, 'Djaniny', 32, 'Forward', 81, 4),
(40, 'Enis Bardhi', 28, 'Midfielder', 80, 4),
(41, 'Gervinho', 36, 'Winger', 82, 4),
(42, 'Ahmet Canbaz', 23, 'Forward', 79, 4),
(43, 'Hamsik', 37, 'Midfielder', 85, 4),
(44, 'Sörloth', 27, 'Forward', 83, 4);

-- 21. Manchester City
INSERT INTO Player (ID, Name, Age, Position, Stats, TeamID) VALUES
(45, 'Ederson', 30, 'Goalkeeper', 89, 21),
(46, 'Kevin De Bruyne', 32, 'Midfielder', 88, 21),
(47, 'Erling Haaland', 23, 'Forward', 92, 21),
(48, 'Jack Grealish', 29, 'Winger', 84, 21),
(49, 'Riyad Mahrez', 33, 'Winger', 83, 21),
(50, 'Bernardo Silva', 29, 'Midfielder', 85, 21),
(51, 'Ilkay Gündogan', 33, 'Midfielder', 84, 21),
(52, 'Phil Foden', 24, 'Midfielder', 87, 21),
(53, 'Kyle Walker', 34, 'Defender', 82, 21),
(54, 'John Stones', 30, 'Defender', 84, 21),
(55, 'Aymeric Laporte', 30, 'Defender', 85, 21);

-- 22. Liverpool
INSERT INTO Player (ID, Name, Age, Position, Stats, TeamID) VALUES
(56, 'Alisson Becker', 31, 'Goalkeeper', 90, 22),
(57, 'Mohamed Salah', 32, 'Forward', 89, 22),
(58, 'Sadio Mane', 32, 'Forward', 88, 22),
(59, 'Virgil van Dijk', 33, 'Defender', 89, 22),
(60, 'Thiago Alcântara', 33, 'Midfielder', 85, 22),
(61, 'Fabinho', 30, 'Midfielder', 84, 22),
(62, 'Roberto Firmino', 33, 'Forward', 85, 22),
(63, 'Luis Díaz', 27, 'Winger', 84, 22),
(64, 'Diogo Jota', 27, 'Forward', 82, 22),
(65, 'Alexander Arnold', 25, 'Defender', 86, 22),
(66, 'Andrew Robertson', 30, 'Defender', 84, 22);

-- 41. Real Madrid
INSERT INTO Player (ID, Name, Age, Position, Stats, TeamID) VALUES
(67, 'Thibaut Courtois', 31, 'Goalkeeper', 90, 41),
(68, 'Karim Benzema', 36, 'Forward', 88, 41),
(69, 'Luka Modrić', 38, 'Midfielder', 89, 41),
(70, 'Toni Kroos', 34, 'Midfielder', 88, 41),
(71, 'Vinícius Júnior', 23, 'Forward', 86, 41),
(72, 'Eduardo Camavinga', 21, 'Midfielder', 83, 41),
(73, 'Eder Militão', 26, 'Defender', 84, 41),
(74, 'Antonio Rudiger', 31, 'Defender', 85, 41),
(75, 'Federico Valverde', 26, 'Midfielder', 85, 41),
(76, 'David Alaba', 31, 'Defender', 86, 41),
(77, 'Dani Carvajal', 32, 'Defender', 80, 41);

-- 42. Barcelona
INSERT INTO Player (ID, Name, Age, Position, Stats, TeamID) VALUES
(78, 'ter Stegen', 31, 'Goalkeeper', 89, 42),
(79, 'Robert Lewandowski', 35, 'Forward', 91, 42),
(80, 'Gerard Piqué', 36, 'Defender', 87, 42),
(81, 'Sergio Busquets', 36, 'Midfielder', 85, 42),
(82, 'Ansu Fati', 21, 'Forward', 82, 42),
(83, 'Frenkie de Jong', 26, 'Midfielder', 84, 42),
(84, 'Jordi Alba', 35, 'Defender', 83, 42),
(85, 'Gavi', 19, 'Midfielder', 81, 42),
(86, 'Pedri', 21, 'Midfielder', 84, 42),
(87, 'Clement Lenglet', 28, 'Defender', 81, 42),
(88, 'Raphinha', 27, 'Winger', 83, 42);

SET IDENTITY_INSERT Stadium ON;
SET IDENTITY_INSERT Stadium OFF;

-- Takımlar ve futbolcular ile Stadların ilişkilendirilmesi
INSERT INTO Stadium (ID, Location, Capacity)
VALUES
(1, 'Türk Telekom Stadyumu', 52600), 
(2, 'Kadıköy Şükrü Saracoğlu Stadyumu', 50493),
(3, 'Vodafone Park', 41747),
(4, 'Medical Park Stadyumu', 40760),
(5, 'Başakşehir Fatih Terim Stadyumu', 17000),
(6, 'Konya Büyükşehir Belediye Stadyumu', 42000),
(7, 'Sivasspor Yeni 4 Eylül Stadyumu', 27000),
(8, 'Antalya Stadyumu', 33500),
(9, 'Göztepe Gürsel Aksel Stadyumu', 20500),
(10, 'Yeni Malatya Stadyumu', 30000),
(11, 'Kasımpaşa Recep Tayyip Erdoğan Stadyumu', 14193),
(12, 'Çaykur Rizespor Stadyumu', 15930),
(13, 'Alanyaspor Bahçeşehir Okulları Stadyumu', 10000),
(14, 'Adana Demirspor Stadyumu', 26500),
(15, 'MKE Ankaragücü Eryaman Stadyumu', 22000),
(16, 'Samsunspor 19 Mayıs Stadyumu', 33158),
(17, 'İstanbulspor Atatürk Olimpiyat Stadyumu', 76000),
(18, 'Gaziantep Stadyumu', 33500),
(19, 'Kayseri Kadir Has Stadyumu', 32800),
(20, 'Rizespor Stadyumu', 23000),

-- Premier Lig Takımları (21-40 arası ID)
(21, 'Emirates Stadium', 60360),
(22, 'Stamford Bridge', 40779),
(23, 'Anfield', 54074),
(24, 'Etihad Stadium', 55317),
(25, 'Old Trafford', 74879),
(26, 'Tottenham Hotspur Stadium', 62062),
(27, 'King Power Stadium', 32600),
(28, 'London Stadium', 66000),
(29, 'Villa Park', 42686),
(30, 'Goodison Park', 39414),
(31, 'Molineux Stadium', 31800),
(32, 'St. James’ Park', 52338),
(33, 'Elland Road', 37610),
(34, 'Amex Stadium', 30750),
(35, 'St Marys Stadium', 32400),
(36, 'Selhurst Park', 26100),
(37, 'City Ground', 30500),
(38, 'Gtech Community Stadium', 17250),
(39, 'Craven Cottage', 25700),
(40, 'Vitality Stadium', 11500),

-- La Liga Takımları (41-60 arası ID)
(41, 'Santiago Bernabéu', 81044),
(42, 'Camp Nou', 99354),
(43, 'Wanda Metropolitano', 68000),
(44, 'Ramón Sánchez Pizjuán', 43700),
(45, 'Anoeta', 39400),
(46, 'Benito Villamarín', 60000),
(47, 'Estadio de la Cerámica', 25000),
(48, 'San Mamés', 53289),
(49, 'Mestalla', 55000),
(50, 'Balaídos', 29600),
(51, 'RCDE Stadium', 40000),
(52, 'Coliseum Alfonso Pérez', 17000),
(53, 'Iberostar Estadio', 23500),
(54, 'Campo de Fútbol de Vallecas', 14700),
(55, 'Estadio de los Juegos Mediterráneos', 15000),
(56, 'Montilivi', 13000),
(57, 'Estadio Martínez Valero', 33700),
(58, 'Estadio Ramón de Carranza', 24000),
(59, 'Vallecas', 14700),
(60, 'El Sadar', 23400);

INSERT INTO Match (FinalScore, HomeTeamScore, AwayTeamScore, AwayTeamName, HomeTeamName, StadiumID, TeamID)
VALUES
(4, 2, 2, 'Arsenal', 'Galatasaray', 1, 21), -- Türk Telekom Stadyumu (Galatasaray ev sahibi)
(3, 1, 2, 'Chelsea', 'Fenerbahçe', 2, 22), -- Kadıköy Şükrü Saracoğlu Stadyumu (Fenerbahçe ev sahibi)
(5, 3, 2, 'Liverpool', 'Beşiktaş', 3, 23), -- Vodafone Park (Beşiktaş ev sahibi)
(3, 1, 2, 'Manchester City', 'Trabzonspor', 4, 24), -- Medical Park Stadyumu (Trabzonspor ev sahibi)
(4, 2, 2, 'Manchester United', 'Başakşehir FK', 5, 25), -- Başakşehir Fatih Terim Stadyumu (Başakşehir ev sahibi)
(3, 1, 2, 'Tottenham Hotspur', 'Konyaspor', 6, 26), -- Konya Büyükşehir Belediye Stadyumu (Konyaspor ev sahibi)
(4, 2, 2, 'Leicester City', 'Sivasspor', 7, 27), -- Sivasspor Yeni 4 Eylül Stadyumu (Sivasspor ev sahibi)
(3, 1, 2, 'West Ham United', 'Antalyaspor', 8, 28), -- Antalya Stadyumu (Antalyaspor ev sahibi)
(4, 2, 2, 'Aston Villa', 'Göztepe', 9, 29), -- Göztepe Gürsel Aksel Stadyumu (Göztepe ev sahibi)
(3, 1, 2, 'Everton', 'Yeni Malatya', 10, 30); -- Yeni Malatya Stadyumu (Yeni Malatya ev sahibi)

SET IDENTITY_INSERT Transfer ON;
SET IDENTITY_INSERT Transfer OFF;

INSERT INTO Transfer (ID,Price, Date)
VALUES 
(1,10000, '2024-12-01'),
(2,20000, '2024-12-02'),
(3,15000, '2024-12-03'),
(4,25000, '2024-12-04'),
(5,30000, '2024-12-05'),
(6,35000, '2024-12-06'),
(7,400000, '2024-12-07'),
(8,45000, '2024-12-08'),
(9,500000, '2024-12-09'),
(10,200000, '2024-12-15');




SET IDENTITY_INSERT Transferred ON;
SET IDENTITY_INSERT Transferred OFF;

INSERT INTO Transferred (ID,TransferID, PlayerID, TeamID, NewTeam, OldTeam) 
VALUES 
(1,1, 1, 1, 'Fenerbahçe', 'Galatasaray'),
(2,2, 12, 2, 'Galatasaray', 'Fenerbahçe'),
(3,3, 24, 3, 'Fenerbahçe', 'Beşiktaş'),
(4,4, 35, 4, 'Galatasaray', 'Trabzonspor'),
(5,5, 47, 21, 'Barcelona', 'Manchester City'),
(6,6, 56, 22, 'Real Madrid', 'Liverpool');

