--- MIS 380 Gym Database --- 
-- create employee table --
CREATE TABLE Employee (
  EmployeeID INTEGER PRIMARY KEY,
  FirstName NVARCHAR (255) NOT NULL,
  LastName NVARCHAR (255) NOT NULL,
  Phonenumber NVARCHAR (10) NOT NULL,
  Address NVARCHAR (255) NOT NULL, 
);

-- insert values
INSERT INTO Employee VALUES (1, 'Ryan', 'Smith', '6461234098','420 Galendael Street');

-- check
Select * 
From Employee;

-- create customer table
CREATE TABLE Customer (
CustomerID INT PRIMARY KEY,
FirstName NVARCHAR (255) NOT NULL, 
LastName NVARCHAR (255) NOT NULL, 
BirthDate NVARCHAR (6) NOT NULL,
Address NVARCHAR (255) NOT NULL,
PhoneNumber NVARCHAR (10) NOT NULL,
GuestID INT,
); 

-- alter table
ALTER TABLE Customer
ALTER COLUMN GuestID INT NOT NULL;

-- alter table
ALTER TABLE Customer
ADD CONSTRAINT FK_Guest_Customer FOREIGN KEY (GuestID) REFERENCES Guest(GuestID);


-- drop
Drop Table Customer;

-- insert values
INSERT INTO Customer VALUES 
(1, 'Brian', 'Loric', 032698, '6093 Zuma Drive', 6464536091, 1)
-- insert values
INSERT INTO Customer VALUES
(2, 'Simon', 'Jacobson', 021285, '103 Partway Blvd', 3218467437, NULL
);
-- insert values 
INSERT INTO Customer VALUES
(3, 'Madison', 'Ramsey', 061402, '92035 Weave Rd', 8903994387, NULL
);
-- insert values 
INSERT INTO Customer VALUES
(4, 'Kara', 'Potts', 121900, '3219 Rocky Rd', 9038764582, NULL
);


-- check
Select * 
From Customer;

-- create membership table
CREATE TABLE Membership (
MembershipID INT,
CustomerID INT,
MembershipType NVARCHAR (255) NOT NULL,
);

-- insert values 
INSERT INTO Membership VALUES (1, 1, 'Premium');

-- check
Select * 
From Membership;


-- create manager table
CREATE TABLE Manager (
ManagerID INT PRIMARY KEY, 
); 

-- insert values
INSERT INTO Manager VALUES (1); 

-- check 
Select *
From Manager;

-- create trainer table
CREATE TABLE Trainer (
TrainerID INT PRIMARY KEY,
WorkoutClass NVARCHAR (255) NOT NULL,
);

-- insert values
INSERT INTO Trainer VALUES (1, 1); 

-- check
Select *
From Trainer;

-- create guest table
CREATE TABLE Guest (
GuestID INT PRIMARY KEY, 
FirstName NVARCHAR (255),
LastName NVARCHAR (255),
);

-- insert values
INSERT INTO Guest VALUES (1, 'Gary', 'Loric'); 

-- check
Select *
From Guest;

-- Join Query
Select Customer.FirstName as Customer, Guest.FirstName as Guest
From Customer 
Join Guest on Customer.GuestID = Guest.GuestID
Where Customer.CustomerID = 1 and Guest.GuestID = 1;

-- Aggregate Query
Select Count(CustomerID) as TotalCustomers
From Customer;

-- Select Query
Select * 
From Customer;