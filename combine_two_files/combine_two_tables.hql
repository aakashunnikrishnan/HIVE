CREATE TABLE Person (
  PersonId INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50)
);

CREATE TABLE Address (
  AddressId INT PRIMARY KEY,
  PersonId INT,
  City VARCHAR(50),
  State VARCHAR(50),
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId)
);

INSERT INTO Person (PersonId, FirstName, LastName)
VALUES (1, 'John', 'Doe'),
       (2, 'Jane', 'Doe'),
       (3, 'Bob', 'Smith');

INSERT INTO Address (AddressId, PersonId, City, State)
VALUES (1, 1, 'New York', 'NY'),
       (2, 1, 'Los Angeles', 'CA'),
       (3, 2, 'San Francisco', 'CA'),
       (4, 3, 'Chicago', 'IL');
       
SELECT p.FirstName, p.LastName, a.City, a.State
FROM Person p
LEFT OUTER JOIN Address a
ON p.PersonId = a.PersonId;

