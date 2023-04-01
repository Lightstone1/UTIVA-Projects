SELECT * FROM
string_manipulation;

--CONCAT

SELECT 
first_name,
last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM
string_manipulation;



SELECT
first_name,
last_name,
CONCAT(first_name, ' ', 'lives in', ' ', address) AS location
FROM
string_manipulation;


--REPLACE

SELECT
first_name,
last_name,
REPLACE (last_name, 'Eze', 'oladipo') AS new_name
FROM
string_manipulation;


--UPPER N LOWER CASE

SELECT
first_name,
last_name,
UPPER (first_name) AS upp_case,
LOWER (last_name) AS lower_case
FROM
string_manipulation;



--LENGTH
SELECT
first_name,
LENGTH (first_name) AS length_character
FROM
string_manipulation;


--TRIM FUNCTION
SELECT 
gender,
LENGTH (gender) AS beforetrim,
RTRIM (gender) AS Aftertrim,
LENGTH (RTRIM (gender)) AS lengthaftertrim
FROM
string_manipulation;


--SUBSTRING, the 9 is the count of M A R I N A, , and the 5 is the LAGOS character

SELECT
address,
SUBSTRING (address,9,5)
FROM
string_manipulation;


--LEFT STRING
SELECT
address,
LEFT (address,6)
FROM
string_manipulation;


--RIGHT
SELECT
address,
RIGHT (address,8) AS newcolumn,
REPLACE (RIGHT (address,8), 'Nigeria.', 'Nigeria') AS latest

FROM
string_manipulation;

