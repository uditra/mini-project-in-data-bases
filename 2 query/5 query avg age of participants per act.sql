select participate.act_id,avg(age)
from visiter
inner join participate on visiter.ticket_id=participate.ticket_id
group by participate.act_id
order by avg(age) DESC;
