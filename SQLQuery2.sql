CREATE DATABASE DrugStoreApp
USE DrugStoreApp

CREATE TABLE Owners(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(50),
Surname nvarchar(50)
)

CREATE TABLE DrugStore(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(50),
Address nvarchar(100),
ContactNumber  nvarchar(100),
CreationDate datetime,
OwnerId int FOREIGN KEY REFERENCES Owners(Id)
)

CREATE TABLE Druggists(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(50),
Surname nvarchar(50),
Age int,
Experience nvarchar(50),
DrugStoreId int FOREIGN KEY REFERENCES Drugstore(Id)
)

CREATE TABLE Drugs(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(50),
Price float,
Count int,
DrugStoreId int FOREIGN KEY REFERENCES DrugStore(Id)
)

INSERT INTO Owners
VALUES('Aysun', 'Huseynli')

INSERT INTO DrugStore
VALUES('Zeferan', '28 May metrosu', '*2022','2015-03-02', 1)

INSERT INTO Druggists
VALUES('Konul', 'Huseynli','20', '2', 1)

INSERT INTO Drugs
VALUES('Nurofen','4.50', 200, 1)

SELECT * FROM Owners
SELECT * FROM DrugStore
SELECT * FROM Druggists
SELECT * FROM Drugs



