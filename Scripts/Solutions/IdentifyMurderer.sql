--I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.
--I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". 
--Only gold members have those bags. The man got into a car with a plate that included "H42W".


SELECT gf.check_in_date
, gf.membership_id
, m.membership_status
, m.name
, p.id 
, p.license_id 
, dl.plate_number 
, i.transcript 
FROM get_fit_now_check_in gf
LEFT JOIN get_fit_now_member m on gf.membership_id = m.id 
LEFT JOIN person p ON m.person_id = p.id
LEFT JOIN drivers_license dl on p.license_id = dl.id
LEFT JOIN interview i on i.person_id = p.id 
where gf.check_in_date = '20180109' and m.id LIKE('%48Z%') AND dl.plate_number LIKE ('%0H42%')