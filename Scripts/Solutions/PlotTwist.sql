--I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
--She has red hair and she drives a Tesla Model S. 
--I know that she attended the SQL Symphony Concert 3 times in December 2017.

SELECT * 
FROM drivers_license dl 
WHERE dl.car_make = 'Tesla' 
AND dl.car_model ='Model S'
AND dl.hair_color = 'red'
AND dl.height <= 67 AND height >= 65
