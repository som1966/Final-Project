-- Creating tables for Happiness-GroupProject
CREATE TABLE country (
     country_code INT NOT NULL,
     country_name VARCHAR NOT NULL,
     PRIMARY KEY (country_code),
     UNIQUE (country_name)
);

CREATE TABLE consumer_price_index (
     country_code INT NOT NULL PRIMARY KEY,
     consumer_price_index DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE democracy_index (
     country_code INT NOT NULL PRIMARY KEY,
     democracy_index DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE gender_ratio (
     country_code INT NOT NULL PRIMARY KEY,
     gender_ratio_males_per100_female DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE happiness_score (
     country_code INT NOT NULL PRIMARY KEY,
     life_ladder DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE infant_mortality (
     country_code INT NOT NULL PRIMARY KEY,
     infant_mortality_per1000_births DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE life_expectancy (
     country_code INT NOT NULL PRIMARY KEY,
     life_expectancy DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE per_capita_gdp (
     country_code INT NOT NULL PRIMARY KEY,
     per_capita_gdp_dollars INT NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE population_density (
     country_code INT NOT NULL PRIMARY KEY,
     population_density DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE safe_drinking_water (
     country_code INT NOT NULL PRIMARY KEY,
     safe_drinking_water_access_pct DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE seats_held_by_women (
     country_code INT NOT NULL PRIMARY KEY,
     seats_held_by_women_pct DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);

CREATE TABLE unemployment_rate (
     country_code INT NOT NULL PRIMARY KEY,
     unemployment_rate DECIMAL NOT NULL,
     FOREIGN KEY (country_code) REFERENCES country(country_code)
);
