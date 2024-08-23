select * from customer
--group by and having with order by and limit 
select c.segment,count(c.customer_id) as "customer_count" from customer as c
group by c.segment
having count(c.customer_id) >2
order by count(c.customer_id)
limit 3

select region, avg(age) as "average_age" from customer 
group by region
having avg(age) > 27.0000000000000000
order by avg(age)
limit 3

select segment,region, avg(age) from customer 
group by segment,region
	having avg(age) > 24.0000000000000000
order by segment,region
limit 11

select city,segment,count(customer) "coutOfcustomer" from customer
	where city= 'Los Angeles'
group by city, segment
	order by count(customer) desc
limit 2

select c.region,c.postal_code, count(c.customer_id) as "total_count" from customer as c
group by c.region, c.postal_code
having count(c.customer_id) < 100
order by count(c.customer_id)desc

select city,country, postal_code from customer
	where country='United States'
	group by city , country, postal_code
order by city asc
limit 300

--case

select customer_id, customer_name,age,
case	
	when age between 18 and 25 then 'young' 
    when age between 26 and 50 then 'adult'
    when age between 50 and 70 then 'old'
    else 
    'To old'
end as group_age
from customer;

select customer_id,customer_name, country,
	case
       when country = 'United States' then 'Domestic'   
       else 'international' 
	end
from customer



select segment, count(customer_id) ,
	case
	when segment ='148' then 'home office'
	when segment ='409' then 'Consumer'
	when segment ='236' then 'corporate'
	else 'timepass'
	end as segmentdata
	from customer 
    group by segment






	
