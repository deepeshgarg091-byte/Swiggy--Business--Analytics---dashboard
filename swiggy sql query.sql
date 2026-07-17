create database swiggy;
use swiggy;
CREATE TABLE users (
    id INT PRIMARY KEY,
    area INT,
    city VARCHAR(100),
    restaurant VARCHAR(100),
    avg_ratings DECIMAL(3,2),
    total_ratings INT,
    address VARCHAR(255),
    delivery_time INT,
    price DECIMAL(10,2)
);
select * from swiggy;
select count(*) from swiggy;
select sum(price) from swiggy;
select restaurant ,city,avg_ratings from swiggy order by avg_ratings desc limit 10;
select restaurant ,city,avg_ratings from swiggy order by avg_ratings asc limit 10;
select city,avg (avg_ratings) as avg_ratings from swiggy group by city order by avg_ratings desc limit 10;
select restaurant,avg (avg_ratings) as avg_ratings from swiggy group by restaurant order by avg_ratings desc limit 10 ;
select restaurant,avg (avg_ratings) as avg_ratings from swiggy group by restaurant order by avg_ratings desc limit 10 ;
select restaurant,avg (delivery_time) as avg_delivet_time from swiggy group by restaurant order by delivery_time desc limit 10 ;
select city, count(*) as restaurant_count from swiggy group by city order by restaurant_count desc limit 10;
select case when delivery_time<=30 then 'fast'
when delivery_time<=45 then 'medium'
else 'slow'
end as delivey_status,count(*) as restaurant_count from swiggy group by delivey_status;
select city, count(*) as restaurant_count from swiggy group by city order by restaurant_count desc ;
select sum(city) as city from swiggy;

select case 
when price >= 400 then 'expensive'
when price >=300 then 'cheap'
else 'ok'
end as price_catagory,
count(*) as total_restaurant from swiggy group by price_catagory order by price_catagory  ;
select restaurant , city from swiggy where avg_ratings>4.5 order by avg_ratings  desc;