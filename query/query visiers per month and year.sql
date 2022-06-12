select distinct extract(year from visit_date) as Ye_ar,extract(month from visit_date) as mo_nth,count(extract(month from visit_date)) as mo_nth
from visiter 
group by extract(year from visit_date),extract(month from visit_date)
