CREATE or REPLACE view acts_ages(sum_money,sum_time,act_name) as
select participate.act_name,avg(age)
from visiter
inner join participate on visiter.ticket_id=participate.ticket_id
group by participate.act_name
order by avg(age) DESC;
