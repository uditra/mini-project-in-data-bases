SELECT CAST( COUNT(ticket_id) as FLOAT)/AVG(VC)
FROM participate , SELECT COUNT(ticket_id) AS VC from visiter 