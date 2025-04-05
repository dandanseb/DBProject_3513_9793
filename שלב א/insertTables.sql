-- Insert data to Contents
INSERT INTO Contents (Content_id, Title, Release_year, Genre) VALUES
(1, 'Echoes of Eternity', 2020, 'Drama'),
(2, 'Galactic Horizons', 2021, 'Sci-Fi'),
(3, 'Mystery Lane', 2019, 'Mystery'),
(4, 'Code Pulse', 2022, 'Techno-Thriller'),
(5, 'Canvas Dreams', 2023, 'Animation');

-- Insert data to CreatorRoles
INSERT INTO CreatorRoles (Role_id, Role_name, Description) VALUES
(1, 'Director', 'Responsible for overall creative vision'),
(2, 'Writer', 'Writes the screenplay or script'),
(3, 'Producer', 'Manages production logistics and budget'),
(4, 'Composer', 'Creates original music for the content'),
(5, 'Animator', 'Creates animation sequences');

-- Insert data to CreatorContent
INSERT INTO CreatorContent (CreatorContent_id, Creator_id, Content_id, Role_id, Contribution_date) VALUES
(1, 100001, 1, 1, '2019-08-15'),
(2, 100002, 1, 2, '2019-09-01'),
(3, 100003, 2, 3, '2020-02-20'),
(4, 100004, 5, 5, '2022-11-10'),
(5, 100005, 3, 4, '2018-07-05');

-- Insert data to Awards
INSERT INTO Awards (Award_id, Creator_id, Award_name, Reception_year) VALUES
(1, 100001, 'Best Director Award', 2021),
(2, 100002, 'Outstanding Writing', 2020),
(3, 100003, 'Producer of the Year', 2022),
(4, 100004, 'Animation Excellence', 2023),
(5, 100005, 'Best Original Score', 2021);

-- Insert data to CreatorRating
INSERT INTO CreatorRating (Rating_id, Creator_id, Reviewer, Rating_score, Review_date) VALUES
(1, 100001, 'FilmCriticX', 9, '2021-06-30'),
(2, 100002, 'ScriptWatch', 8, '2020-12-12'),
(3, 100003, 'MediaScope', 7, '2022-01-10'),
(4, 100004, 'AnimationZone', 9, '2023-04-14'),
(5, 100005, 'SoundTrackMag', 8, '2021-08-09');

-- Insert data to CreatorContracts
INSERT INTO CreatorContracts (Contract_id, Creator_id, Start_date, End_date, Contract_value) VALUES
(1, 100001, '2020-01-01', '2023-01-01', 150000),
(2, 100002, '2019-03-01', '2022-03-01', 120000),
(3, 100003, '2021-05-15', '2024-05-15', 130000),
(4, 100004, '2022-06-01', '2025-06-01', 110000),
(5, 100005, '2020-10-10', '2023-10-10', 100000);

-- Insert data to CreatorCollab
INSERT INTO CreatorCollab (Collab_id, Creator1_id, Creator2_id, Project_name, Creation_Year) VALUES
(1, 100001, 100002, 'Eternal Echo Script', 2019),
(2, 100003, 100004, 'Animated Frontier', 2022),
(3, 100002, 100005, 'Score & Story', 2020),
(4, 100001, 100003, 'Galactic Production', 2021),
(5, 100004, 100005, 'Visual Harmony', 2023);

-- Insert data to CreatorEarnings
INSERT INTO CreatorEarnings (Earning_id, Creator_id, payment_date, total_earning) VALUES
(1, 100001, '2023-01-05', 180000),
(2, 100002, '2022-03-15', 140000),
(3, 100003, '2024-02-01', 150000),
(4, 100004, '2025-03-11', 125000),
(5, 100005, '2023-11-30', 135000);

-- Insert data to Creators
INSERT INTO Creators (Creator_id, Full_name, Birth_date, Nationality, CreatorContent_id, Award_id, Rating_id, Contract_id, Earning_id, Collab_id) VALUES
(100001, 'Alice Morgan', '1980-04-12', 'British', 1, 1, 1, 1, 1, 1),
(100002, 'Brian Chen', '1975-06-23', 'American', 2, 2, 2, 2, 2, 3),
(100003, 'Carmen Diaz', '1988-09-09', 'Spanish', 3, 3, 3, 3, 3, 4),
(100004, 'Daniel Kim', '1990-11-30', 'South Korean', 4, 4, 4, 4, 4, 2),
(100005, 'Eva Thompson', '1985-02-17', 'Canadian', 5, 5, 5, 5, 5, 5);
