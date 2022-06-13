CREATE or REPLACE FUNCTION get_num_of_parti_of_act(act_name_req)
RETURN int is num int;
BEGIN
SELECT SUM(number_of_participants) into sumy
from actual_activity
where act_name = act_name
GROUP BY act_name
RETURN(sumy);
end get_num_of_parti_of_act;
