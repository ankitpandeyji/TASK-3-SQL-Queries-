select * from sales;

select * from people;

select s.SaleDate, s.Amount, p.salesperson, s.SPID, p.SPID
from sales s 
join People p on p.SPID = s.SPID;

select s.SaleDate, s.Amount, pr.Product
from sales s 
left join products pr on pr.PID = s.PID;

select s.SaleDate, s.Amount, pr.Product, p.Team
from sales s 
join People p on p.SPID = s.SPID
left join products pr on pr.PID = s.PID
where p.Team = '';

select s.SaleDate, s.Amount, pr.Product, p.Team
from sales s 
join People p on p.SPID = s.SPID
left join products pr on pr.PID = s.PID
where s.Amount<500
and p.Team= 'Yummies';

select s.SaleDate, s.Amount, pr.Product, p.Team
from sales s 
join People p on p.SPID = s.SPID
left join products pr on pr.PID = s.PID
join Geo g on g.GeoID = s.GeoID
where p.team = ''
and g.Geo in ('India','New Zeland')
order by SaleDate
