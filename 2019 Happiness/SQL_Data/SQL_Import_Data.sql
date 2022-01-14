COPY country
FROM 'C:\Users\Public\country.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY consumer_price_index
FROM 'C:\Users\Public\consumer_price_index.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY democracy_index
FROM 'C:\Users\Public\democracy_index.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY gender_ratio
FROM 'C:\Users\Public\gender_ratio.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY happiness_score
FROM 'C:\Users\Public\happiness_score.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY infant_mortality
FROM 'C:\Users\Public\infant_mortality.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY life_expectancy
FROM 'C:\Users\Public\life_expectancy.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY per_capita_gdp
FROM 'C:\Users\Public\per_capita_gdp.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY population_density
FROM 'C:\Users\Public\population_density.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY safe_drinking_water
FROM 'C:\Users\Public\safe_drinking_water.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY seats_held_by_women
FROM 'C:\Users\Public\seats_held_by_women.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';

COPY unemployment_rate
FROM 'C:\Users\Public\unemployment_rate.csv'
DELIMITER ',' CSV HEADER
ENCODING 'windows-1251';