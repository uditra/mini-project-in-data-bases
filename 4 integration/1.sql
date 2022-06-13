SELECT *
FROM worker
WHERE EXISTS(
	SELECT instructor_id
	FROM actual_activity
	WHERE worker.WorkerId = actual_activity.instructor_id 
) AND worker.leftDate = NULL

