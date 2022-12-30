CREATE DATABASE IF NOT EXISTS EcoMonitoring5;
use EcoMonitoring5;

CREATE TABLE MonitorObjects (
ID int NOT NULL primary key auto_increment,
ObjectName varchar (30) NOT NULL,
Knas decimal(4,2),
Kf decimal(4,3),
MinSalary int
);

CREATE TABLE TraceElements(
ID int NOT NULL primary key auto_increment,
ElementName VARCHAR (30) NOT NULL,
GDK decimal(4,3),
Ai decimal(4,2)
);

CREATE TABLE Pollution(
ObjectNumber int NOT NULL,
foreign key(ObjectNumber) references MonitorObjects(ID),
ElementNumber int NOT NULL,
foreign key(ElementNumber) references TraceElements(ID),
Mi decimal(6,3),
Kzi decimal(6,3),
YearOfData int not null
);

INSERT INTO MonitorObjects(ObjectName, Knas, Kf, MinSalary)
VALUE
 ('Ясенсвіт', 1, 1, 11400),
 ('Трипільська ТЕС', 1, 1, 16200),
 ('Ветропак', 1, 1, 9900),
 ('Бетонпромбуд', 1, 1.65, 11765),
 ('Київська ГЕС', 1.8, 1.25, 15090),
 ('ТЕРЕЗИНЕ', 1.2, 1, 11430); 

 INSERT INTO TraceElements(ElementName, GDK)
 VALUE
  ('Цинк', 0.05),
  ('Залізо', 0.04),
  ('Завислі речовини', 0.15),
  ('Мідь', 0.002),
  ('Аміак', 0.04),
  ('Озон', 0.03)
  ;

INSERT INTO Pollution(ObjectNumber, ElementNumber, Mi, Kzi, YearOfData)
 VALUE
 (2, 1, 4.9, 0.024, 2020),
 (5, 1, 3.2, 0.04, 2020),
 (1, 2, 5.41, 0.039, 2020),
 (4, 2, 7.17, 0.014, 2020),
 (5, 3, 19.3, 0.8, 2020),
 (6, 3, 20.54, 0.53, 2020),
 (2, 4, 1.55, 0.015, 2020),
 (3, 4, 3.93, 0.035, 2020),
 (6, 4, 2.27, 0.01, 2020),
 (4, 5, 1.58, 1.2, 2020),
 (3, 6, 8.57, 0.6, 2020),
 (1, 6, 9.63, 0.011, 2020)
 ;




select * from MonitorObjects;
select * from TraceElements;
select * from Pollution;



