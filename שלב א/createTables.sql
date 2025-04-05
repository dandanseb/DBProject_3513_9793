CREATE TABLE if not exists Contents
(
  Content_id INT NOT NULL,
  Title VARCHAR(50) NOT NULL,
  Release_year INT NOT NULL,
  Genre VARCHAR(50) NOT NULL,
  PRIMARY KEY (Content_id)
);

CREATE TABLE if not exists CreatorRoles
(
  Role_id INT NOT NULL,
  Role_name VARCHAR(60) NOT NULL,
  Description VARCHAR(255) NOT NULL,
  PRIMARY KEY (Role_id)
);

CREATE TABLE if not exists CreatorContent
(
  CreatorContent_id INT NOT NULL,
  Creator_id INT NOT NULL,
  Content_id INT NOT NULL,
  Role_id INT NOT NULL,
  Contribution_date DATE NOT NULL,
  PRIMARY KEY (CreatorContent_id),
  FOREIGN KEY (Content_id) REFERENCES Contents(Content_id),
  FOREIGN KEY (Role_id) REFERENCES CreatorRoles(Role_id)
);

CREATE TABLE if not exists Awards
(
  Award_id INT NOT NULL,
  Creator_id INT NOT NULL,
  Award_name VARCHAR(60) NOT NULL,
  Reception_year INT NOT NULL, 
  PRIMARY KEY (Award_id)
);

CREATE TABLE if not exists CreatorRating
(
  Rating_id INT NOT NULL,
  Creator_id INT NOT NULL,
  Reviewer VARCHAR(30) NOT NULL,
  Rating_score INT NOT NULL,
  Review_date DATE NOT NULL,
  PRIMARY KEY (Rating_id)
);

CREATE TABLE if not exists CreatorContracts
(
  Contract_id INT NOT NULL,
  Creator_id INT NOT NULL,
  Start_date DATE NOT NULL,
  End_date DATE NOT NULL,
  Contract_value INT NOT NULL,
  PRIMARY KEY (Contract_id)
);

CREATE TABLE if not exists CreatorCollab
(
  Collab_id INT NOT NULL,
  Creator1_id INT NOT NULL,
  Creator2_id INT NOT NULL,
  Project_name VARCHAR(50) NOT NULL,
  Creation_Year INT NOT NULL, 
  PRIMARY KEY (Collab_id)
);

CREATE TABLE if not exists CreatorEarnings
(
  Earning_id INT NOT NULL,
  Creator_id INT NOT NULL,
  payment_date DATE NOT NULL,
  total_earning INT NOT NULL,
  PRIMARY KEY (Earning_id)
);

CREATE TABLE if not exists Creators
(
  Creator_id INT NOT NULL,
  Full_name VARCHAR(60) NOT NULL,
  Birth_date DATE NOT NULL,
  Nationality VARCHAR(30) NOT NULL,
  CreatorContent_id INT , 
  Award_id INT , 
  Rating_id INT , 
  Contract_id INT , 
  Earning_id INT , 
  Collab_id INT , 
  PRIMARY KEY (Creator_id),
  FOREIGN KEY (CreatorContent_id) REFERENCES CreatorContent(CreatorContent_id),
  FOREIGN KEY (Award_id) REFERENCES Awards(Award_id),
  FOREIGN KEY (Rating_id) REFERENCES CreatorRating(Rating_id),
  FOREIGN KEY (Contract_id) REFERENCES CreatorContracts(Contract_id),
  FOREIGN KEY (Earning_id) REFERENCES CreatorEarnings(Earning_id),
  FOREIGN KEY (Collab_id) REFERENCES CreatorCollab(Collab_id)
);
