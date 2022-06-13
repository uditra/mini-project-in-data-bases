CREATE or REPLACE PROCEDURE change_costs(to_add in int)
is BEGIN
UPDATE possible_activityble
set cost_of_participation = cost_of_participation + to_add
end change_costs
