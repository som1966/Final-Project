# Final Project :  (Title Under Development)

## Topic
The team was very interested in the World Happiness Index and wanted to see if there were other factors that will improve / predict the "Life Ladder Score".
(The World Happiness Annual Report was started back in 2012 when the United Nations adopted a resolution: "Happiness: Towards a Holistic Definition of Development" to encourage countries to measure happiness and guide public policy.  The Happiness Index originates from the nation of Bhutan who uses measures gross national happiness instead of gross domestic product- Wikipedia)

### Potential Questions
1) If any variable will change the happiness score (Ladder Score)?
2) Is happiness related to increase in a nation's wealth?
3) Can a positive indicator be improved by public policy change?

## Data
Twelve data sources were selected and reviewed for potential variables that may impact / predict the "Life Ladder Score".

**Life Ladder Score is a "Nationally representative samples of respondents are asked to think of a ladder, with the best possible life for them being a 10, and the worst possible life being a 0. They are then asked to rate their own current lives on that 0 to 10 scale." (https://medium.com/analytics-vidhya/what-is-world-happiness-index-f5744490701f)

![image](https://user-images.githubusercontent.com/89953246/149640645-63e7ba70-ac98-4210-bf56-7354dd55659d.png)

Proposed Model:

y (life_ladder) = X (democracy_index, consumer_price_index, gender_ratio_males_per100_female, infant_mortality, life_expectancy, per_capita_gdp_dollars, population_density, safe_drinking_water_access, seats_held_by_women_pct, unemployment_rate)

## Proposed Analysis 

SQL is used to create,join tables, the draft ERD and connect to database from AWS/S3.

![image](https://user-images.githubusercontent.com/89953246/149641402-8564d9af-a486-4fda-bb05-db9bef9f414e.png)

Python / Pandas will be used to ETL the dataset. A supervised learning model approach will be used, utilizing PCA analysis and Random Forest algorithms for the analyses. A dashboard will be displayed using Tableau.


