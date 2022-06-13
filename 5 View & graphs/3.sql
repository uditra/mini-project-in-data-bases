
CREATE or REPLACE view acts_profits(sum_money,sum_time,act_name) as
select Sum_parti_number*cost_of_participation as total_profit , act_count*cost_of_arranging as total_arranging_cost, act_name
from (select sum(number_of_participants)as Sum_parti_number, count(act_name)as act_count,act_name,cost_of_arranging,cost_of_participation
from (SELECT actual_activitiy.number_of_participants, actual_activitiy.act_name,possible_activity.cost_of_arranging,possible_activity.cost_of_participation
FROM actual_activitiy
INNER JOIN possible_activity ON actual_activitiy.act_name=possible_activity.act_name)
group by act_name,cost_of_arranging,cost_of_participation)
