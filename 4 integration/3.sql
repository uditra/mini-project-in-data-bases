SELECT *
FROM worker
WHERE EXISTS(
	SELECT instructor_id
	FROM actual_activity
	WHERE worker.WorkerId = actual_activity.instructor_id AND act_date = TO_DATE(01,06,2017 as DD/MM/YYYY)
)
