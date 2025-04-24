select GeoID, sum(Amount), Avg(Amount), Sum(Boxes)
from sales
group by GeoID;

select g.geo, sum(Amount), Avg(Amount), Sum(Boxes)
from sales s
join geo g on s.geoID=g.geoID
group by g.geo;

select pr.category, p.team, Sum(Boxes), Sum(Amount) 
from sales s 
join people p on p.spid = s.spid
join products pr on pr.pid= s.pid
where p.team <> ''
group by pr.category, p.team
order by pr.category, p.team;

select pr.product, sum(s.Amount), 'Total Amount'
from sales s
join products pr on pr.pid = s.pid 
group by pr.product
order by 'Total Amount' desc
limit 17;






