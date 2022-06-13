CREATE or REPLACE PROCEDURE change_num_of_parti(to_add in int)
is BEGIN
UPDATE possible_activityble
set max_number_of_participants = max_number_of_participants + number_of_participants
WHERE max_number_of_participants>25
end change_num_of_parti
