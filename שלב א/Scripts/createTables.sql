CREATE TABLE Roles
(
  Role_id INT NOT NULL,
  Role_name VARCHAR(100) NOT NULL,
  Description VARCHAR(100) NOT NULL,
  PRIMARY KEY (Role_id)
);

CREATE TABLE Awards
(
  Award_id INT NOT NULL,
  Award_name VARCHAR(100) NOT NULL,
  PRIMARY KEY (Award_id)
);

CREATE TABLE Collaboration
(
  Collab_id INT NOT NULL,
  Creator2_id INT NOT NULL,
  Project_name VARCHAR(100) NOT NULL,
  Creation_year INT NOT NULL,
  PRIMARY KEY (Collab_id)
);

CREATE TABLE Creators
(
  Creator_id INT NOT NULL,
  Full_name VARCHAR(100) NOT NULL,
  Birth_date DATE NOT NULL,
  Nationality VARCHAR(40) NOT NULL,
  Role_id INT,
  PRIMARY KEY (Creator_id),
  FOREIGN KEY (Role_id) REFERENCES Roles(Role_id)
);

CREATE TABLE Contents
(
  Content_id INT NOT NULL,
  Title VARCHAR(100) NOT NULL,
  Release_year INT NOT NULL,
  Gender VARCHAR(100) NOT NULL,
  Creator_id INT NOT NULL,
  PRIMARY KEY (Content_id),
  FOREIGN KEY (Creator_id) REFERENCES Creators(Creator_id)
);

CREATE TABLE Rating
(
  Rating_id INT NOT NULL,
  Reviewer_name VARCHAR(100) NOT NULL,
  Rating_score INT NOT NULL,
  Review_date DATE NOT NULL,
  Creator_id INT NOT NULL,
  PRIMARY KEY (Rating_id),
  FOREIGN KEY (Creator_id) REFERENCES Creators(Creator_id)
);

CREATE TABLE Earnings
(
  Earning_id INT NOT NULL,
  Payment_date DATE NOT NULL,
  Total_earning INT NOT NULL,
  Creator_id INT NOT NULL,
  PRIMARY KEY (Earning_id),
  FOREIGN KEY (Creator_id) REFERENCES Creators(Creator_id)
);

CREATE TABLE Contracts
(
  Contract_id INT NOT NULL,
  Start_date DATE NOT NULL,
  End_date DATE NOT NULL,
  Contract_value INT NOT NULL,
  Creator_id INT NOT NULL,
  PRIMARY KEY (Contract_id),
  FOREIGN KEY (Creator_id) REFERENCES Creators(Creator_id)
);

CREATE TABLE Receives_award
(
  Reception_year INT NOT NULL,
  Creator_id INT NOT NULL,
  Award_id INT NOT NULL,
  PRIMARY KEY (Creator_id, Award_id),
  FOREIGN KEY (Creator_id) REFERENCES Creators(Creator_id),
  FOREIGN KEY (Award_id) REFERENCES Awards(Award_id)
);

CREATE TABLE Collaborate_with
(
  Collab_id INT NOT NULL,
  Creator_id INT NOT NULL,
  PRIMARY KEY (Collab_id, Creator_id),
  FOREIGN KEY (Collab_id) REFERENCES Collaboration(Collab_id),
  FOREIGN KEY (Creator_id) REFERENCES Creators(Creator_id)
);
