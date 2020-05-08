WITH last_address AS (SELECT MAX(address_number) as address_number, address_street_name, 'Y' as last_house FROM person 
GROUP BY address_street_name 
)

SELECT p.*
FROM person p
LEFT JOIN last_address la on la.address_number = p.address_number AND la.address_street_name = p.address_street_name
WHERE (la.last_house='Y' AND p.address_street_name = 'Northwestern Dr' )
OR (p.name LIKE ('%Annabel%') AND p.address_street_name = 'Franklin Ave')

