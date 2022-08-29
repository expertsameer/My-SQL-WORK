CREATE TABLE Employe_Category (
  EmployeCategoryid INT PRIMARY KEY ,
  Name Varchar(20),
  );

CREATE TABLE Employe (
  Employeid INT PRIMARY KEY ,
  Name Varchar(20),
  Date_OF_join  Date,
  Salary INT,
  EmployeeCategoryid INT FOREIGN KEY  REFERENCES Employe_Category(EmployeCategoryid),
);

CREATE TABLE Food_Catogry (
  Food_CatogryId INT PRIMARY KEY,
  Name Varchar(20),
  
);
CREATE TABLE Foods (
  FoodId INT PRIMARY KEY,
  Name Varchar(30),
  Price INT,
  FoodCatogryId INT FOREIGN KEY  REFERENCES Food_Catogry(Food_CatogryId)
);

CREATE TABLE Customers (
  Customerid INT PRIMARY KEY,
  Name Varchar(20),
  Phone Char(11),
);



CREATE TABLE Orders (
  OrdersId INT PRIMARY KEY,
  OrdersAT DateTime,
  Customerid INT FOREIGN KEY  REFERENCES Customers(Customerid),
);


CREATE TABLE Food_Order(
  FoodId INT FOREIGN KEY  REFERENCES Foods(FoodId),
  OrderId INT FOREIGN KEY  REFERENCES Orders (OrdersId),
  Quantity INT,
);

INSERT into Employe_Category Values(1,'Cooking staff')
INSERT into Employe_Category Values(2,'Cleaning staff')
INSERT into Employe_Category Values(3,'Serving staff')
INSERT into Employe_Category Values(4,'Marketing staff')
INSERT into Employe_Category Values(5,'Cash satff')
Select * From Employe_Category

INSERT into Employe Values(20,'Shankar','12-03-2021',18000,2)
INSERT into Employe Values(21,'Ali','12-02-2021',30000,5)
INSERT into Employe Values(22,'Ahsan','12-01-2021',40000,4)
INSERT into Employe Values(23,'Sameer','12-02-2021',22000,1)
INSERT into Employe Values(24,'Haris','12-03-2022',35000,4)
INSERT into Employe Values(25,'Fawad','12-03-2021',19000,3)
Select * From Employe
 
INSERT into Food_Catogry Values(111,'Burgers menu')
INSERT into Food_Catogry Values(112,'Pizza menu')
INSERT into Food_Catogry Values(113,'Chiness menu')
INSERT into Food_Catogry Values(114,'Vegitable menu')
INSERT into Food_Catogry Values(115,'Fries menu')
INSERT into Food_Catogry Values(116,'Biryani menu')
Select * from Food_Catogry


INSERT into Foods Values(1162,'Chicken Biryani',230,116)
INSERT into Foods Values(1163,'Beef Biryani',280,116)
INSERT into Foods Values(1164,'Sadi Biryani',150,116)
INSERT into Foods Values(1165,'Allo Biryani',160,116)
INSERT into Foods Values(1151,'Mayo garlic fries',130,115)
INSERT into Foods Values(1152,'Masala Fries ',80,115)
INSERT into Foods Values(1112,'Zinger Burger ',250,111)
INSERT into Foods Values(1113,'Beef Burger ',200,111)
INSERT into Foods Values(1114,'Chicken Burger ',150,111)
INSERT into Foods Values(1115,'Anda Burger ',80,111)
INSERT into Foods Values(1141,'Daal',110,114)
INSERT into Foods Values(1121,'Large Fajita Pizza ',400,112)
INSERT into Foods Values(1122,'Small Chese Pizza ',200,112)
INSERT into Foods Values(1123,'Regular Fajita Pizza ',300,112)
INSERT into Foods Values(1124,'VIP Fajita and Chicken Pizza ',500,112)
Select * From Foods

INSERT into Customers Values(10,'Zohair',03122908722)
INSERT into Customers Values(11,'Ilyas',03122900722)
INSERT into Customers Values(12,'Ahmed',03122900722)
INSERT into Customers Values(13,'Ebaad',03122911722)
INSERT into Customers Values(14,'Yasir',03122912722)
INSERT into Customers Values(15,'Murtuza',03122923722)
INSERT into Customers Values(16,'Maaz',03122923722)
INSERT into Customers Values(17,'Moazzam',03122934722)
INSERT into Customers Values(18,'Abdul Moiz',03122908756)
INSERT into Customers Values(19,'Abdullah',03122908734)
INSERT into Customers Values(20,'Ammar',03122908724)
INSERT into Customers Values(21,'Arsalan',03122908723)

Select * From Customers

INSERT into Orders Values(1,13-01-2022,11)
INSERT into Orders Values(2,14-01-2022,18)
INSERT into Orders Values(3,14-01-2022,17)
INSERT into Orders Values(4,14-01-2022,12)
INSERT into Orders Values(5,14-01-2022,12)
INSERT into Orders Values(6,14-01-2022,17)
INSERT into Orders Values(7,15-01-2022,21)
INSERT into Orders Values(8,15-01-2022,20)
INSERT into Orders Values(9,15-01-2022,19)
INSERT into Orders Values(10,15-01-2022,20)
Select * From Orders

INSERT into Food_Order Values(1123,10,2)
INSERT into Food_Order Values(1122,9,4)
INSERT into Food_Order Values(1113,4,2)
INSERT into Food_Order Values(1121,1,1)
INSERT into Food_Order Values(1121,2,3)
INSERT into Food_Order Values(1124,3,2)
Select * From Food_Order
   
Select Food_Catogry.[Name] , AVG(Price) as Average_Price from Foods
Join Food_Catogry ON Food_Catogry.Food_CatogryId=Foods.FoodCatogryId
Group by Food_Catogry.[Name]

Select Food_Catogry.[Name],Food_Catogry.Food_CatogryId, AVG(Price) as Average_Price from Foods
Join Food_Catogry ON Food_Catogry.Food_CatogryId=Foods.FoodCatogryId
Group by Food_Catogry.[Name],Food_Catogry.Food_CatogryId
Having AVG(Price) > 110

Select * From Employe_Category
Where EmployeCategoryId in (1,4)

Select * From Employe_Category
where  EmployeCategoryId Between 1 and 3

Select * From Foods
Order by Name asc;

Select  from Employe
Select * From Employe_Category
Select * From Employe
Select * from Food_Catogry
Select * From Foods 
Select * From Customers
Select * From Orders
Select * From Food_Order