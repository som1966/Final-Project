--
-- Query to Join all Tables
--
SELECT  c.country_code, 
		c.country_name, 
		hs.life_ladder, 
		di.democracy_index, 
		cpi.consumer_price_index, 
		gr.gender_ratio_males_per100_female,
		im.infant_mortality_per1000_births,
		le. life_expectancy,
		gdp.per_capita_gdp_dollars,
		pd.population_density,
		water.safe_drinking_water_access_pct,
		seats.seats_held_by_women_pct,
		ur.unemployment_rate
FROM country c
JOIN happiness_score hs
ON c.country_code = hs.country_code
JOIN democracy_index di
ON c.country_code = di.country_code
JOIN consumer_price_index cpi
ON c.country_code = cpi.country_code
JOIN gender_ratio gr
ON c.country_code = gr.country_code
JOIN infant_mortality im
ON c.country_code = im.country_code
JOIN life_expectancy le
ON c.country_code = le.country_code
JOIN per_capita_gdp gdp
ON c.country_code = gdp.country_code
JOIN population_density pd
ON c.country_code = pd.country_code
JOIN safe_drinking_water water
ON c.country_code = water.country_code
JOIN seats_held_by_women seats
ON c.country_code = seats.country_code
JOIN unemployment_rate ur
ON c.country_code = ur.country_code
;

--
-- Create New Singular/Combined Table
--
CREATE TABLE happiness_joined AS
SELECT  c.country_code, 
		c.country_name, 
		hs.life_ladder, 
		di.democracy_index, 
		cpi.consumer_price_index, 
		gr.gender_ratio_males_per100_female,
		im.infant_mortality_per1000_births,
		le. life_expectancy,
		gdp.per_capita_gdp_dollars,
		pd.population_density,
		water.safe_drinking_water_access_pct,
		seats.seats_held_by_women_pct,
		ur.unemployment_rate
FROM country c
JOIN happiness_score hs
ON c.country_code = hs.country_code
JOIN democracy_index di
ON c.country_code = di.country_code
JOIN consumer_price_index cpi
ON c.country_code = cpi.country_code
JOIN gender_ratio gr
ON c.country_code = gr.country_code
JOIN infant_mortality im
ON c.country_code = im.country_code
JOIN life_expectancy le
ON c.country_code = le.country_code
JOIN per_capita_gdp gdp
ON c.country_code = gdp.country_code
JOIN population_density pd
ON c.country_code = pd.country_code
JOIN safe_drinking_water water
ON c.country_code = water.country_code
JOIN seats_held_by_women seats
ON c.country_code = seats.country_code
JOIN unemployment_rate ur
ON c.country_code = ur.country_code
;

--
-- Write table to CSV
--
COPY happiness_joined TO 'C:\Users\Public\happiness_joined.csv' DELIMITER ',' CSV HEADER;