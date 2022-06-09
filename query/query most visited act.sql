SELECT SUM(number_of_participants),COUNT(act_name), act_name
FROM actual_activitiy
GROUP BY act_name
ORDER BY SUM(number_of_participants) DESC;
