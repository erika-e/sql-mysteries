--I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.
--I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". 
--Only gold members have those bags. The man got into a car with a plate that included "H42W".

WITH get_fit_jan9 AS (SELECT *
FROM get_fit_now_check_in gfnci 
LEFT JOIN get_fit_now_member m on gfnci.membership_id = m.id 
where gfnci.check_in_date = '20180109' and m.id LIKE('%48Z%')
)

SELECT gf.check_in_date
, gf.membership_id
, gf.membership_status
, gf.name
, p.license_id 
, dl.plate_number 
FROM get_fit_jan9 gf
LEFT JOIN person p ON gf.person_id = p.id
LEFT JOIN drivers_license dl on p.license_id = dl.id 