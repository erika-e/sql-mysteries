--I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
--She has red hair and she drives a Tesla Model S. 
--I know that she attended the SQL Symphony Concert 3 times in December 2017.

WITH events_by_person as (SELECT COUNT() as events_attended
, person_id
, event_name
, substr(cast(date as char),1,4) || '-' || SUBSTR(cast(date as char),5,2) as event_year_month
FROM facebook_event_checkin fec 
WHERE event_name LIKE '%SQL%'
GROUP BY event_name, person_id, event_year_month
)

SELECT * 
FROM drivers_license dl 
LEFT JOIN person p on dl.id = p.license_id
LEFT JOIN events_by_person e ON p.id=e.person_id 
AND e.event_name='SQL Symphony Concert' 
AND e.event_year_month='2017-12'
WHERE dl.car_make = 'Tesla' 
AND dl.car_model ='Model S'
AND dl.hair_color = 'red'
AND dl.height <= 67 AND height >= 65
