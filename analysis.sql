SELECT
	stay,
	COUNT(*) AS count_int,
  ROUND(AVG(todep)::numeric, 2) AS average_phq,
  ROUND(AVG(tosc)::numeric, 2) AS average_scs,
  ROUND(AVG(toas)::numeric, 2) AS average_as
FROM public.students
WHERE inter_dom = 'Inter' 
GROUP BY students.stay
ORDER BY stay DESC;