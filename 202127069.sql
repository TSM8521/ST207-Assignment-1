--(B) - Create all tables with their respective attributes, data types, and primary and foreign keys. Remember to properly map all relationships.


--This code creates each table and their respective attributes. 
--It also creates primary and foreign keys.
-- It was imported from Lucid chart and then some names were modified with underscores.

CREATE TABLE `Person` (
  `Person_ID` Integer,
  `Name` Varchar(255),
  `Address` Varchar(255),
  `Phone` Integer,
  PRIMARY KEY (`Person_ID`)
);


CREATE TABLE `Hangar` (
  `Hangar_Number` Integer,
  `Capacity` Integer,
  `Hangar_Location` Varchar(255),
  PRIMARY KEY (`Hangar_Location`)
);

CREATE TABLE `Corporation` (
  `Corporation_ID` Integer,
  `Name` Varchar(255),
  `Address` Varchar(255),
  `Phone` Integer,
  PRIMARY KEY (`Corporation_ID`)
);

CREATE TABLE `Plane Type` (
  `Model_Number` Integer,
  `Capacity` Integer,
  `Weight` Float,
  PRIMARY KEY (`Model_Number`)
);


CREATE TABLE `Aeroplane` (
  `Registration_Number` Integer,
  `Name` Varchar(255),
  `Plane_Type` Varchar(255),
  `Hangar_Loc` Varchar(255),
  `Owner_Corp_ID` Integer,
  `Owner_Person_ID` Integer,
  `Purchase_Date` Integer,
  PRIMARY KEY (`Registration_Number`),
  FOREIGN KEY (`Owner_Person_ID`) REFERENCES `Person`(`Person_ID`),
  FOREIGN KEY (`Hangar_Loc`) REFERENCES `Hangar`(`Hangar_Location`),
  FOREIGN KEY (`Owner_Corp_ID`) REFERENCES `Corporation`(`Corporation_ID`),
  FOREIGN KEY (`Plane_Type`) REFERENCES `Plane Type`(`Model_Number`)
);


CREATE TABLE `Pilot` (
  `License_Number` Integer,
  `Total_Hours_Flown` Integer,
  `Restrictions` Varchar(255),
  PRIMARY KEY (`License_Number`)
);

CREATE TABLE `Employee` (
  `Employee_ID` Integer,
  `Name` Varchar(255),
  `Salary` Integer,
  `Shift_Worked` Integer,
  PRIMARY KEY (`Employee_ID`)
);



CREATE TABLE `Service Record` (
  `Service_Record_ID` Integer,
  `Aeroplane_ID` Integer,
  `Emp_ID` Integer,
  `Date_of_Maintenance` Integer,
  `Hours_Spent` Integer,
  `Service_Type` Varchar(255),
  PRIMARY KEY (`Service_Record_ID`),
  FOREIGN KEY (`Aeroplane_ID`) REFERENCES `Aeroplane`(`Registration_Number`),
  FOREIGN KEY (`Emp_ID`) REFERENCES `Employee`(`Employee_ID`)
); 


--(C) - Insert (populate) some data into your tables. Don't worry about the number of rows but make sure you have sufficient data to answer all questions. You can use any airport-like dataset as a reference.

-- Inserting data into the Person table

INSERT INTO Person (Person_ID, Name, Address, Phone)
VALUES (1, 'John Doe', '123 Main St', 1234567890);

INSERT INTO Person (Person_ID, Name, Address, Phone)
VALUES (2, 'Jane Smith', '456 Elm St', 9876543210);

INSERT INTO Person (Person_ID, Name, Address, Phone)
VALUES (3, 'Michael Johnson', '789 Oak St', 5555555555);



Select * 
From Person


-- Inserting data into the Corporation table
INSERT INTO Corporation (Corporation_ID, Name, Address, Phone)
VALUES (1, 'ABC Corporation', '123 Corporate Ave', 5551234567);

INSERT INTO Corporation (Corporation_ID, Name, Address, Phone)
VALUES (2, 'XYZ Inc.', '456 Business Rd', 5559876543);

INSERT INTO Corporation (Corporation_ID, Name, Address, Phone)
VALUES (3, 'Global Industries', '789 Enterprise Blvd', 5557891234);


Select * 
From Corporation



-- Inserting data into the Hangar table
INSERT INTO Hangar ("Hangar_Number", Capacity, "Hangar_Location")
VALUES (1, 50, 'Hangar A');

INSERT INTO Hangar ("Hangar_Number", Capacity, "Hangar_Location")
VALUES (2, 30, 'Hangar B');

INSERT INTO Hangar ("Hangar_Number", Capacity, "Hangar_Location")
VALUES (3, 40, 'Hangar C');


Select * 
From Hangar




-- Inserting data into the Plane Type table
INSERT INTO "Plane Type" ("Model_Number", Capacity, Weight)
VALUES (1, 200, 1500.5);

INSERT INTO "Plane Type" ("Model_Number", Capacity, Weight)
VALUES (2, 100, 1000.0);

INSERT INTO "Plane Type" ("Model_Number", Capacity, Weight)
VALUES (3, 150, 1200.75);


Select * 
From "Plane Type"



-- Inserting data into the Pilot table
INSERT INTO Pilot ("License_Number", "Total_Hours_Flown", Restrictions)
VALUES (101, 2000, 'None');

INSERT INTO Pilot ("License_Number", "Total_Hours_Flown", Restrictions)
VALUES (102, 1500, 'Vision impaired');

INSERT INTO Pilot ("License_Number", "Total_Hours_Flown", Restrictions)
VALUES (103, 1800, 'Instrument rated');


Select * 
From Pilot



-- Inserting data into the Employee table
INSERT INTO Employee ("Employee_ID", Name, Salary, "Shift_Worked")
VALUES (201, 'Mary Johnson', 60000, 1);

INSERT INTO Employee ("Employee_ID", Name, Salary, "Shift_Worked")
VALUES (202, 'Robert Smith', 55000, 2);

INSERT INTO Employee ("Employee_ID", Name, Salary, "Shift_Worked")
VALUES (203, 'Emily Davis', 62000, 1);


Select * 
From Employee



-- Inserting data into the Aeroplane table
INSERT INTO Aeroplane (Registration_Number, Name, Plane_Type, Hangar_Loc, Owner_Person_ID, Owner_Corp_ID, Purchase_Date)
VALUES (1, 'Plane 1', 1, 'Hangar A', 1, NULL, '2023-01-01');

INSERT INTO Aeroplane (Registration_Number, Name, Plane_Type, Hangar_Loc, Owner_Person_ID, Owner_Corp_ID, Purchase_Date)
VALUES (2, 'Plane 2', 2, 'Hangar B', NULL, 1, '2023-02-01');

INSERT INTO Aeroplane (Registration_Number, Name, Plane_Type, Hangar_Loc, Owner_Person_ID, Owner_Corp_ID, Purchase_Date)
VALUES (3, 'Plane 3', 3, 'Hangar A', 2, NULL, '2023-03-01');




Select * 
From Aeroplane


-- Inserting data into the Service Record table
INSERT INTO "Service Record" ("Service_Record_ID", "Aeroplane_ID", "Emp_ID", "Date_of_Maintenance", "Hours_Spent", "Service_Type")
VALUES (1, 1, 201, '2023-01-10', 3, 'Regular Maintenance');

INSERT INTO "Service Record" ("Service_Record_ID", "Aeroplane_ID", "Emp_ID", "Date_of_Maintenance", "Hours_Spent", "Service_Type")
VALUES (2, 2, 202, '2023-01-15', 4, 'Engine Inspection');

INSERT INTO "Service Record" ("Service_Record_ID", "Aeroplane_ID", "Emp_ID", "Date_of_Maintenance", "Hours_Spent", "Service_Type")
VALUES (3, 3, 203, '2023-01-20', 5, 'Avionics Check');



Select * 
From "Service Record"



--(D) - List all aeroplanes and their owners, and whether each owner is a person or a corporation:

--I use Case to select values for person, corporation, p.name, c.name. 
--If those are Null then it returns Unknown for that entry in the table. 
--I also use left join so information from the aeroplane table will be given to us.

SELECT
    A.Name AS Aeroplane_Name,
    CASE
        WHEN A.Owner_Person_ID IS NOT NULL THEN 'Person'
        WHEN A.Owner_Corp_ID IS NOT NULL THEN 'Corporation'
        ELSE 'Unknown'
    END AS Owner_Type,
    CASE
        WHEN A.Owner_Person_ID IS NOT NULL THEN P.Name
        WHEN A.Owner_Corp_ID IS NOT NULL THEN C.Name
        ELSE 'Unknown'
    END AS Owner_Name
FROM Aeroplane AS A
LEFT JOIN Person AS P ON A.Owner_Person_ID = P.Person_ID
LEFT JOIN Corporation AS C ON A.Owner_Corp_ID = C.Corporation_ID;



--(E) - List all maintenance services, ordered by ascending maintenance time (number of hours):

--I just select attrributes from the entity Service Record (service type and hours spent)
--Then I order them in ascending order by hours spent

SELECT "Service_Type" AS Service_Type, "Hours_Spent" AS Hours_Spent
FROM "Service Record"
ORDER BY "Hours_Spent" ASC;




--(F) - List the employees and all the planes they can do maintenance work:

--Here I'm selecting from teh service record table. 
--By using inner join on the results from employee and aeroplane table with their counterparts in the service record table. 
--Then I group the results by employee ID. 



SELECT
    E.Name AS Employee_Name,
    A.Name AS Planes_For_Maintenance
FROM "Service Record" AS SR
INNER JOIN Employee AS E ON SR.Emp_ID = E.Employee_ID
INNER JOIN Aeroplane AS A ON SR.Aeroplane_ID = A.Registration_Number
GROUP BY E.Employee_ID;




--(G) (open question) - Create a trigger for your database. 
--You must provide a rationale/justification of the chosen trigger, the corresponding code, and two test cases (SQL commands changing the database state and firing the trigger). 
--Tip: what would be the most challenging update, insert, or delete operation that can compromise the consistency of your database?


-- Rationale: What if a plane ownership is transferred between owners? We need to be able to map this change.


--It activates after the insert operation. It updates the record if either ownership is switched between people 
--and again if planes are transferred between corporations.


CREATE TRIGGER IF NOT EXISTS UpdateOwnerInformation
AFTER INSERT ON Aeroplane
BEGIN
    UPDATE Person
    SET Person_ID = NEW.Owner_Person_ID
    WHERE Person_ID = NEW.Owner_Person_ID;

    UPDATE Corporation
    SET Corporation_ID = NEW.Owner_Corp_ID
    WHERE Corporation_ID = NEW.Owner_Corp_ID;
END;


--The following are 2 situations where a plane is transferred between either people or corporations.

-- In the begining John Doe owns the plane.
-- The plane is then transferred to Jane Smith (Person_ID 2).

UPDATE Aeroplane
SET Owner_Person_ID = 2
WHERE Registration_Number = 1;



-- In the begining ABC Corporation owns the plane.
-- The plane is then transferred to to XYZ Inc (Corporation_ID 2).

UPDATE Aeroplane
SET Owner_Corp_ID = 2
WHERE Registration_Number = 2;



--(H) (open question) - Create a view for the chosen database. 
--You must provide a rationale/justification of the chosen view, the corresponding code, and a sample of its content (for instance, a SELECT command showing the view's content). 
--Tip: think about the most frequent query on your database and whether this can be coded as a view. 
--Also, remember that views are usually applied to summarise data from multiple base tables.

--Rationale: An airport may want to know whether a plane has been maintained, which plane, service records and how long was spent on it if they want to calculate hourly wages.


--First I select and rename columns from the Service record table.
--Then I inner join the service record and aeroplane table based of the Aeroplane_ID and registration number.
--So this provided data about each aeroplane and its associated record in the service record table.



CREATE VIEW ServiceHistory AS
SELECT
    SR."Service_Record_ID" AS Service_Record_ID,
    A.Name AS Aeroplane_Name,
    SR."Date_of_Maintenance" AS Maintenance_Date,
    SR."Hours_Spent" AS Hours_Spent
FROM "Service Record" AS SR
INNER JOIN Aeroplane AS A ON SR."Aeroplane_ID" = A."Registration_Number";


SELECT * 
FROM ServiceHistory;









