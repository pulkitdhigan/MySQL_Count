create database Car_Dekho;

-- Q1. Read Cars Data.
use car_dekho;
select * from car_dekho;

-- Q2. Total cars: To get a count of total records
select count(*) from car_dekho;

-- Q3. The manager asked the employee How many cars will be available in 2023?
select count(*) from car_dekho
where year=2023;

-- Q4. The manager asked the emplyee how cars is available in 2020, 2021, 2022?
select year, count(year) from car_Dekho
where year = 2020 or year=2021 or year = 2022
group by year;

-- Q5. Client asked me to print the total of all cars by year. I don't see all the details.
select year,count(*) as number_of_cars from car_dekho
group by year;

-- Q6. client asked the car dealer, how many diesel car is there be in 2020?
select count(*) from car_dekho
where year = 2020 and fuel = "Diesel";

-- Q7. Client requested a car dealer agent. How many petrol cars is there in 2020?
select count(*) from car_dekho
where fuel = "Petrol" and year = 2020;  -- 51

-- Q8. The manager told the employee to give a print all the fuel cars (petrol diesel and cng)
--     come by all year.
select year, fuel, count(year) as qty from car_dekho
group by fuel, year;

-- Q9. The manager said there were more than 100 cars in a given year, which year had more than
--     100 cars?
select year, count(*) as num from car_dekho
group by year
having count(name) > 100;

-- Q10. The manager said the employee, all cars count detail betweeen 2015 and 2023:
--      we need complete list.
select year, count(*) as qty from car_dekho
group by year
having year between 2015 and 2023;

-- Q11. The manager said to the employee all car details between 2015 and 2023 we need complete list.
select * from car_dekho 
where year between 2015 and 2023;



