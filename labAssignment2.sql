create database TravelOnTheGo;

use TravelOnTheGo;

create table PASSENGER (
	 Passenger_name varchar(255),
	 Category varchar(255),
	 Gender varchar(255),
	 Boarding_City varchar(255),
	 Destination_City varchar(255),
	 Distance int,
	 Bus_Type varchar(255)
);

create table PRICE (
	 Bus_Type varchar(255),
	 Distance int,
	 Price int
);

insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) values 
('Sejal', 'AC', 'F', 'Bengaluru','Chennai', 350, 'Sleeper'),
('Anmol', 'Non-AC', 'M', 'Mumbai', 'Hyderabad', 700, 'Sitting'),
('Pallavi', 'AC', 'F', 'Panaji','Bengaluru', 600, 'Sleeper'),
('Khusboo', 'AC', 'F', 'Chennai', 'Mumbai', 1500, 'Sleeper'),
('Udit', 'Non-AC', 'M', 'Trivandrum','Panaji', 1000, 'Sleeper'),
('Ankur', 'AC', '', 'M', 'Nagpur', 'Hyderabad', 500, 'Sitting'),
('Hemant', 'Non-AC', 'M', 'Panaji','Mumbai', 700, 'Sleeper'),
('Manish', 'Non-AC', 'M', 'Hyderabad','Bengaluru', 500, 'Sitting'),
('Piyush', 'AC', 'M', 'Pune','Nagpur', 700, 'Sitting');

3. SELECT count(Passenger_name) as Count, Gender from passenger  where Distance>600 group by Gender;

4. SELECT Price, Bus_Type from price where Bus_Type='Sleeper' order by price asc limit 1;

5. SELECT * from passenger WHERE Passenger_name LIKE 'S%';

6. SELECT Passenger_name, Boarding_City, Boarding_City, passenger.Bus_Type, sum(price.Price) as totalPrice from passenger inner join price on 
   passenger.Bus_Type=price.Bus_Type and passenger.Distance=price.Distance group by passenger.Passenger_name;

7. SELECT passenger.Passenger_name, price.Price,passenger.Distance from passenger inner join price on 
passenger.Bus_Type=price.Bus_Type and passenger.Distance=price.Distance 
where passenger.Distance<=1000 and passenger.Bus_Type='Sitting' group by passenger.Passenger_name;

8. SELECT Passenger_name, price.Bus_Type ,Price from passenger inner join price 
on price.Distance=passenger.Distance where passenger.Passenger_name="Pallavi" ;

9. SELECT Distance from passenger group by Distance order by Distance desc ;

10. SELECT  Passenger_name, Distance, COUNT(*) / Distance * 100 AS percentage from passenger group by Passenger_name;

11. SELECT *,
CASE WHEN Price > 1000 THEN 'Expensive'
WHEN Price<500 and price<1000 THEN 'Average Cost'
ELSE 'Cheap otherwise'
END AS Result
FROM price;