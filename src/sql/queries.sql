-- queries.sql
-- Complete each mission by writing your SQL query below the instructions.
-- Don't forget to end each query with a semicolon ;

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
SELECT name, country FROM regions 
INNER JOIN observations ON regions.id = observations.region_id 
WHERE count > 0 GROUP BY region_id ORDER BY COUNT(*) DESC;

-- MISSION 2
-- Your query here;
SELECT strftime('%m',observation_date) AS mes FROM observations
GROUP BY mes ORDER BY COUNT(*) DESC;

-- MISSION 3
-- Your query here;
SELECT scientific_name, common_name, SUM(count) AS viewings FROM species 
INNER JOIN observations ON species.id = observations.species_id 
GROUP BY species_id ORDER BY viewings ASC;

-- MISSION 4
-- Your query here;
SELECT name, country FROM regions 
INNER JOIN observations ON regions.id = observations.region_id 
WHERE count > 0 GROUP BY region_id ORDER BY COUNT(*) DESC
LIMIT 1;

-- MISSION 5
-- Your query here;

SELECT scientific_name, common_name, COUNT(count) AS seen FROM species 
INNER JOIN observations ON species.id = observations.species_id 
WHERE count > 0 GROUP BY species_id ORDER BY seen DESC;

-- MISSION 6
-- Your query here;

SELECT observer, COUNT(*) AS registers FROM observations
GROUP BY observer ORDER BY registers DESC;

-- MISSION 7
-- Your query here;

SELECT scientific_name, common_name, count FROM species 
LEFT JOIN observations ON species.id = observations.species_id 
WHERE count IS NULL OR count = 0 GROUP BY species.id;


-- MISSION 8
-- Your query here;

SELECT observation_date FROM observations
WHERE count > 0 GROUP BY observation_date 
ORDER BY COUNT(*) DESC;