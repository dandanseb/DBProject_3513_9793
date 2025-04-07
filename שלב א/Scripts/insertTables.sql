-- INSERT DATA INTO Roles
INSERT INTO Roles (Role_id, Role_name, Description) VALUES
(1, 'Director', 'Directs the film'),
(2, 'Writer', 'Writes the script'),
(3, 'Producer', 'Manages production'),
(4, 'Actor', 'Performs on screen');

-- INSERT DATA INTO Awards
INSERT INTO Awards (Award_id, Award_name) VALUES
(1, 'Best Director'),
(2, 'Best Script'),
(3, 'Best Actor'),
(4, 'Loved Story');

-- INSERT DATA INTO Collaboration
INSERT INTO Collaboration (Collab_id, Creator2_id, Project_name, Creation_year) VALUES
(101, 10002, 'Sunset Echo', 2020),
(102, 10003, 'Moonlight Vision', 2021),
(103, 10004, 'Northern Star', 2022),
(104, 10001, 'Dream Makers', 2023);

-- INSERT DATA INTO Creators
INSERT INTO Creators (Creator_id, Full_name, Birth_date, Nationality, Role_id) VALUES
(10001, 'Alice Smith', '1980-05-15', 'USA', NULL),
(10002, 'Bob Johnson', '1975-09-22', 'UK', 2),
(10003, 'Clara Lee', '1988-03-30', 'Canada', NULL),
(10004, 'David Kim', '1990-11-12', 'South Korea', 4);

-- INSERT DATA INTO Contents
INSERT INTO Contents (Content_id, Title, Release_year, Gender, Creator_id) VALUES
(201, 'Shadows of Light', 2020, 'Drama', 10001),
(202, 'Echoes in Time', 2021, 'Thriller', 10002),
(203, 'Frozen Horizon', 2022, 'Adventure', 10003),
(204, 'Galaxy Reborn', 2023, 'Sci-Fi', 10004);

-- INSERT DATA INTO Rating
INSERT INTO Rating (Rating_id, Reviewer_name, Rating_score, Review_date, Creator_id) VALUES
(301, 'John Doe', 8, '2021-01-10', 10001),
(302, 'Jane Doe', 9, '2022-02-15', 10002),
(303, 'Mike Lane', 7, '2023-03-20', 10003),
(304, 'Laura White', 10, '2024-04-05', 10004);

-- INSERT DATA INTO Earnings
INSERT INTO Earnings (Earning_id, Payment_date, Total_earning, Creator_id) VALUES
(401, '2021-05-10', 100000, 10001),
(402, '2022-06-15', 120000, 10002),
(403, '2023-07-20', 90000, 10003),
(404, '2024-08-25', 150000, 10004);

-- INSERT DATA INTO Contracts
INSERT INTO Contracts (Contract_id, Start_date, End_date, Contract_value, Creator_id) VALUES
(501, '2021-01-01', '2021-12-31', 50000, 10001),
(502, '2022-01-01', '2022-12-31', 60000, 10002),
(503, '2023-01-01', '2023-12-31', 70000, 10003),
(504, '2024-01-01', '2024-12-31', 80000, 10004);

-- INSERT DATA INTO Receives_award
INSERT INTO Receives_award (Reception_year, Creator_id, Award_id) VALUES
(2020, 10001, 1),
(2021, 10002, 2),
(2022, 10003, 3),
(2023, 10004, 4);

-- INSERT DATA INTO Collaborate_with
INSERT INTO Collaborate_with (Collab_id, Creator_id) VALUES
(101, 10001),
(102, 10002),
(103, 10003),
(104, 10004);
