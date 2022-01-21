# Final Project :  (Title Under Development)

## Topic
The team was very interested in the World Happiness Index and wanted to see if there were other factors that will improve / predict the "Life Ladder Score".
(The World Happiness Annual Report was started back in 2012 when the United Nations adopted a resolution: "Happiness: Towards a Holistic Definition of Development" to encourage countries to measure happiness and guide public policy.  The Happiness Index originates from the nation of Bhutan who uses measures gross national happiness instead of gross domestic product- Wikipedia)

### Potential Questions

1) Will any of the selected variables(democracy_index, consumer_price_index, gender_ratio_males_per100_female, infant_mortality, life_expectancy, per_capita_gdp_dollars, population_density, safe_drinking_water_access, seats_held_by_women_pct, unemployment_rate) affect the happiness score (Ladder Score)?
2) Is happiness related to increase in a nation's wealth?
3) Are there any correlated variables that affect happiness be related to a public policy change?

## Data

Twelve data sources were selected and reviewed for potential variables that may impact / predict the "Life Ladder Score".

**Life Ladder Score is a "Nationally representative samples of respondents are asked to think of a ladder, with the best possible life for them being a 10, and the worst possible life being a 0. They are then asked to rate their own current lives on that 0 to 10 scale." (https://medium.com/analytics-vidhya/what-is-world-happiness-index-f5744490701f)

![image](https://user-images.githubusercontent.com/89953246/149640645-63e7ba70-ac98-4210-bf56-7354dd55659d.png)

SQL is used to create,join tables, the draft ERD and connect to database from AWS/S3.

![image](https://user-images.githubusercontent.com/89953246/149641402-8564d9af-a486-4fda-bb05-db9bef9f414e.png)

The data was ETL - loaded, transformed (removing null values, unnecessary columns, joined with other tables and created dataframes.

![ETL](https://user-images.githubusercontent.com/89953246/150582559-3ff9a15a-2f0f-47fa-8502-4f360310cb9d.png)



## Exploring Models

First, Multiple Linear Regression was used to to predict outcome (Life Ladder)

y (life_ladder) = X (democracy_index, consumer_price_index, gender_ratio_males_per100_female, infant_mortality, life_expectancy, per_capita_gdp_dollars, population_density, safe_drinking_water_access, seats_held_by_women_pct, unemployment_rate)

This model's R2 came to 0.30, indicating there was little correlation between the predicted and observed values.  Three of the lowest features were dropped and the model was rerun with no significant change. (add image of code)

To enhance the multiple regression, RandomForest Regressor was used. Random Forest Regressor is a supervised learning algorithm which uses ensemble learning using multiple regression decision trees and then calculates the average of the multiple decision trees.

![Random Forest Image](https://user-images.githubusercontent.com/89953246/150585434-feeab381-7675-4c84-8681-242f9f0b358d.jpeg)

(add image of results)

The team also discussed adding additional data or change the model.  A new model was developed for the RandomForestRegressorby switching the (y) to life_expectancy and adding life_ladder to (x).

y (life_expectancy) = X (democracy_index, consumer_price_index, gender_ratio_males_per100_female, infant_mortality, life_ladder, per_capita_gdp_dollars, population_density, safe_drinking_water_access, seats_held_by_women_pct, unemployment_rate)


## Dashboard
The dashboard is being created in Tableau.  The following tables have been created:

![Dashboard draft](https://user-images.githubusercontent.com/89953246/150587681-367a84c3-38d5-4aa5-8f7a-40869b4dcdc6.png)

![image](https://user-images.githubusercontent.com/89953246/150587891-1ec5e020-62ab-480c-a9eb-571b282bf6ff.png)

The interactive section of the dashboard will be (hopefully) "clicking" on the country and "sheet 2" will change to reflect the country.  Still working on "normalizing gdp" and the interaction.

![image](https://user-images.githubusercontent.com/89953246/150588521-b00d8220-edb6-4b17-8996-f9664ba45904.png)






