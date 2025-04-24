select * from sales;

select saleDate, Customers, Amount from sales;

select Customers, Amount, GeoID from sales;

select SaleDate, Amount, Boxes, Amount / Boxes as 'Amount Per Boxes' from sales;

select * from sales
where Amount > 10000
order by Amount desc;

select * from sales
where GeoID = 'G1'
order by PID, Amount, Boxes desc;

select * from sales
where Amount > 10000 and SaleDate >= '2022-01-01' ;

select Saledate, Amount, Boxes from sales
where Amount > 10000 and year(SaleDate) = 2022
order by Amount, boxes desc;

select * from sales
where Boxes > 0 and Boxes <= 50;

select * from sales
where Boxes between 0 and 50
order by Boxes desc;

select SaleDate, Boxes, Amount, weekday(SaleDate) as 'As day Of Week' 
from sales
where weekday(SaleDate) = 4;

select * from people;

select * from people
where Team = 'Delish' or Team = 'Yummies';

select * from people
where Team in ('Delish','Yummies');

select * from people
where Salesperson like 'A%';

select * from people
where Salesperson like '%C%';

select * from sales;
select SaleDate,Amount,
          case          when Amount < 1000 then 'under in 1k'
	                   when  Amount < 5000 then 'under in 5k'
                      when Amount < 10000 then 'under in 10k'
                 else '10k or more'
                end as 'Amount Category'
                from sales;
                
select SaleDate,Boxes,
          case          when Boxes < 500 then 'under in 500'
                 else '500 or more'
                end as 'Boxes'
                from sales;
                
                
 select Team ,count(*) from People
 group by Team;
 
  
 
  

