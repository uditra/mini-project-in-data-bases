SELECT DISTINCT act_name
FROM actual_activity
WHERE EXISTS(
	SELECT WorkerId
	FROM worker
	where worker.WorkerId = actual_activity.instructor_id AND worker.leftDate = NULL
) 

