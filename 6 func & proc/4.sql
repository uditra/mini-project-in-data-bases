CREATE or REPLACE FUNCTION get_num_of_parti_of_act(act_name_req)
RETURN int is num int;
BEGIN
select avg(age)
from visiter
inner join participate on visiter.ticket_id=participate.ticket_id
WHERE  actual_activity = act_name_req
group by participate.act_id
RETURN(sumy);
end get_num_of_parti_of_act;




