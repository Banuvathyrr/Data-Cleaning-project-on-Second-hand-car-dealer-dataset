USE cars;

-- (1)-- COUNT THE TOTAL NUMBER OF RECORDS IN THE TABLE--
SELECT 
	COUNT(*)
FROM 
	carsproj;
    
    
-- (2)--READ DATA---
SELECT 
	*
FROM 
	carsproj
LIMIT 7927;


-- (3)---- CHECK DATATYPES OF INDIVIDUAL COLUMNS IN THE TABLE
SELECT 
	Data_Type
FROM
	Information_schema.columns 
WHERE 
	table_schema= 'cars' and table_name= 'carsproj';
    
    
-- (4)---- CHECK THE COLUMNS THAT HAVE EMPTY ROWS
SELECT COUNT('Name') FROM carsproj WHERE 'Name' = ''; 
SELECT COUNT('year') FROM carsproj WHERE 'Year' = '';   
SELECT COUNT('selling_price') FROM carsproj WHERE 'selling_price' = ''; 
SELECT COUNT('km_driven') FROM carsproj WHERE 'km_driven' = '';      
SELECT COUNT('fuel') FROM carsproj WHERE 'fuel' = ''; 
SELECT COUNT('seller_type') FROM carsproj WHERE 'seller_type' = '';  
SELECT COUNT('transmission') FROM carsproj WHERE 'transmission' = '';  
SELECT COUNT('owner') FROM carsproj WHERE 'owner' = ''; 
SELECT COUNT('mileage') FROM carsproj WHERE 'mileage' = '';  
SELECT COUNT('engine') FROM carsproj WHERE 'engine' = '';  
SELECT COUNT('max_power') FROM carsproj WHERE 'max_power' = ''; 
SELECT COUNT('torque') FROM carsproj WHERE 'torque' = '';  
SELECT COUNT('seats') FROM carsproj WHERE 'seats' = '';  
-- No missing value--  

SELECT * FROM carsproj;


-- (5)-- CHECK FOR INCONSISTENT DATA IN TORQUE COLUMN--
-- Remove text after the symbol @ and then concat 'Nm' to the numerica value of torque

With cte as (
SELECT *,
       REGEXP_SUBSTR(torque, '[0-9]+') AS extracted_values
FROM carsproj
)
SELECT CONCAT (extracted_values,'Nm') FROM cte;



-- (6)-- UPDATE INCONSISTENT DATA IN TORQUE COLUMN--
UPDATE carsproj
SET torque = REGEXP_SUBSTR(torque, '[0-9]+');

UPDATE carsproj
SET torque = CONCAT (torque,'Nm') ;

SELECT * FROM carsproj;



-- (7)-- CHECK FOR DUPLICATE ROWS--
WITH CTE2 AS (
SELECT *,
 ROW_NUMBER() OVER (PARTITION BY Name, year, selling_price, km_driven, fuel, seller_type, transmission, 
 owner, mileage, engine, max_power, torque, seats ORDER BY Name desc) as rownum
 FROM carsproj)
 SELECT COUNT(*) FROM CTE2 WHERE rownum > 1;
 
 -- (8)-- SHOWS DUPLICATE ROWS--
 SELECT 
  * 
FROM (SELECT *,
 ROW_NUMBER() OVER (PARTITION BY Name, year, selling_price, km_driven, fuel, seller_type, transmission, 
 owner, mileage, engine, max_power, torque, seats ORDER BY Name desc) as rownum
 FROM carsproj) t
 WHERE rownum>1;
 
 
 -- (9)-- TO EXTRACT UNIQUE ROWS WIHOUT DUPLICATES --
 WITH CTE2 AS (
SELECT *,
 ROW_NUMBER() OVER (PARTITION BY Name, year, selling_price, km_driven, fuel, seller_type, transmission, 
 owner, mileage, engine, max_power, torque, seats ORDER BY Name desc) as rownum
 FROM carsproj)
 SELECT * FROM CTE2 WHERE rownum = 1;

-- or--
SELECT DISTINCT Name, year, selling_price, km_driven, fuel, seller_type, transmission, 
 owner, mileage, engine, max_power, torque, seats
 FROM carsproj;

 -- (10)-- DELETE THE ROW WITH km_driven=1 --
DELETE
	FROM 
	dist_cars 
WHERE 
	km_driven = 1;


SELECT * FROM dist_cars;


 -- (11)-- SHOW THE ROW WITH TORQUE = NULL and MAX_POWER = 'bhp'--
SELECT 
	*
FROM 
	dist_cars
WHERE 
	Name = 'Maruti Omni CNG';



-- (12)---- DELETE THE ROW WITH TORQUE = NULL and MAX_POWER = 'bhp'--
DELETE FROM 
	dist_cars
WHERE 
	Name = 'Maruti Omni CNG';
   
   


SELECT * FROM dist_cars;

ALTER TABLE dist_cars
DROP COLUMN rownum;

SELECT * FROM dist_cars;



-- 13) CLEAN THE TRANSMISSION COLUMN--
SELECT *,
CASE
 WHEN transmission =' Automatic' THEN 'Automatic'
 WHEN transmission = ' Manual' THEN 'Manual'
 ELSE transmission
 END AS transmission_alias
 FROM dist_cars;
 
 UPDATE dist_cars
 SET transmission = 
 CASE 
	WHEN transmission =' Automatic' THEN 'Automatic'
	WHEN transmission = ' Manual' THEN 'Manual'
	ELSE transmission
 END;
 

SELECT * FROM dist_cars;


