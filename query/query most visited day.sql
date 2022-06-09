SELECT COUNT(visit_date), visit_date
FROM visiter
GROUP BY visit_date
ORDER BY COUNT(visit_date) DESC;
