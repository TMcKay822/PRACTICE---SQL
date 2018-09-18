# SQL-Training-

CREATE TABLE _Salesmen(
Salesmen_id int, Name varchar(255),
City char(255), Commission numeric (10,2) NOT NULL,
PRIMARY KEY (Salesmen_id)); 
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5001,'James Hong', 'New York', 0.15); 
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5002, 'Nail Knite', 'Paris', 0.13); 
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5005, 'Pit Alex', 'London', 0.11);
INSERT INTO _Salesmen(salesmen_id, Name, City, Commission)
VALUES (5006, 'Mc Lyon', 'Paris', 0.14);
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5003, 'Lauson Hen', '   ', 0.12); 
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5007, 'Paul Adam', 'Rome', 0.13); 
SELECT* FROM _Salesmen;
