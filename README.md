# Final Project :  What Determines Happiness?

## Topic
The team was very interested in the World Happiness Index and wanted to see if there were other factors that will improve / predict the "Life Ladder Score".
(The World Happiness Annual Report was started back in 2012 when the United Nations adopted a resolution: "Happiness: Towards a Holistic Definition of Development" to encourage countries to measure happiness and guide public policy.  The Happiness Index originates from the nation of Bhutan who uses measures gross national happiness instead of gross domestic product- Wikipedia)

## Purpose of Analyss / Potential Questions

![image](https://user-images.githubusercontent.com/89953246/151729987-95ae97e6-dc31-4f6a-a53b-1697a6d63f16.png)


1) Will any of the selected variables(democracy_index, consumer_price_index, gender_ratio_males_per100_female, infant_mortality, life_expectancy, per_capita_gdp_dollars, population_density, safe_drinking_water_access, seats_held_by_women_pct, unemployment_rate) affect the happiness score (Ladder Score)?
2) Is happiness related to increase in a nation's wealth?
3) Are there any correlated variables that affect happiness be related to a public policy change?

## Data

Twelve data sources were selected and reviewed for potential variables that may impact / predict the "Life Ladder Score".

**Life Ladder Score is a "Nationally representative samples of respondents are asked to think of a ladder, with the best possible life for them being a 10, and the worst possible life being a 0. They are then asked to rate their own current lives on that 0 to 10 scale." (https://medium.com/analytics-vidhya/what-is-world-happiness-index-f5744490701f)

![image](https://user-images.githubusercontent.com/89953246/149640645-63e7ba70-ac98-4210-bf56-7354dd55659d.png)

SQL is used to create,join tables, the draft ERD and connect to database from AWS/S3.

![image](https://user-images.githubusercontent.com/89953246/149641402-8564d9af-a486-4fda-bb05-db9bef9f414e.png)

Data Descriptions:

![image](https://user-images.githubusercontent.com/89953246/151730062-d48f97f0-8414-4239-bfca-f8490e694423.png)

The data was ETL - loaded, transformed (removing null values, unnecessary columns, joined with other tables and created dataframes.

![ETL](https://user-images.githubusercontent.com/89953246/150582559-3ff9a15a-2f0f-47fa-8502-4f360310cb9d.png)

### Tool Box

![image](https://user-images.githubusercontent.com/89953246/150589223-dd3436f9-1f6a-4249-aa58-b1d8d348e7f1.png)



## Exploring Models

In considering models for the dataset and questions to be answered, Multiple Linear Regression was the better choice because the data was not broken down by classification.

### Model 1

First, Multiple Linear Regression was used to to predict outcome (Life Ladder)

y (life_ladder) = X (democracy_index, consumer_price_index, gender_ratio_males_per100_female, infant_mortality, life_expectancy, per_capita_gdp_dollars, population_density, safe_drinking_water_access, seats_held_by_women_pct, unemployment_rate)

![image](https://user-images.githubusercontent.com/89953246/150646356-bd64f527-792a-4c0f-92ea-1c6e36fda88d.png)

This model's R2 came to 0.31, indicating there was little correlation between the predicted and observed values.  Three of the lowest features were dropped and the model was rerun with no significant change. 

![image](https://user-images.githubusercontent.com/89953246/150646398-f9fa4bb1-251c-456f-8a60-7b72380b875f.png)

![image](https://user-images.githubusercontent.com/89953246/150646554-29d086e9-2a5b-46b0-a3c1-e67bc7acc2a5.png)

## Multiple Linear Regression was used to predict outcome again (3 features dropped)
The following features were dropped- unemployment_rate, population_density, and consumer_price_index.
The accuracy dropped to 0.23.

![image](https://user-images.githubusercontent.com/89953246/150650140-84269bc0-2a72-4e5d-b143-3ef07782ddc9.png)

### Model 2 Random Forest Regressor

To enhance the multiple regression, RandomForest Regressor was used. Random Forest Regressor is a supervised learning algorithm which uses ensemble learning using multiple regression decision trees and then calculates the average of the multiple decision trees.

![Random Forest Image](https://user-images.githubusercontent.com/89953246/150585434-feeab381-7675-4c84-8681-242f9f0b358d.jpeg)

The original model (see below) was rerun using Random Forest Regressor.

y (life_ladder) = X (democracy_index, consumer_price_index, gender_ratio_males_per100_female, infant_mortality, life_expectancy, per_capita_gdp_dollars, population_density, safe_drinking_water_access, seats_held_by_women_pct, unemployment_rate)

![image](https://user-images.githubusercontent.com/89953246/150684948-81695bd6-5a19-427e-a0d4-2f4c44566928.png)

![image](https://user-images.githubusercontent.com/89953246/150684981-a0bf049f-77ba-44a5-a199-eb4824f9dc6c.png)

![image](https://user-images.githubusercontent.com/89953246/150685010-bf6998c3-0cda-4074-a820-3df8511fe68b.png)

Using the Random Forest Regressor, improved the R2 = 0.36; still not reflecting a good fit.  

### Model 3 Random Forest Regressor And New (Y)

The team also discussed adding additional data or change the model.  A new model was developed for the RandomForestRegressor by switching the (y) to life_expectancy and adding life_ladder to (x).

y (life_expectancy) = X (democracy_index, consumer_price_index, gender_ratio_males_per100_female, infant_mortality, life_ladder, per_capita_gdp_dollars, population_density, safe_drinking_water_access, seats_held_by_women_pct, unemployment_rate)

![image](https://user-images.githubusercontent.com/89953246/150590506-b7dfb4a4-6aa3-4a3f-a31b-70192afbccb4.png)

![image](https://user-images.githubusercontent.com/89953246/150590034-f9122fec-9482-4b14-b774-58add097c4e7.png)

![image](https://user-images.githubusercontent.com/89953246/150590297-b7ef3b57-447f-401a-8a34-095d171f3d9c.png)

![image](https://user-images.githubusercontent.com/89953246/150590411-033027e2-9a2d-4746-8a9d-2f41d908a873.png)



## Dashboard
The dashboard is located in Tableau (https://public.tableau.com/app/profile/nancy.condon#!/). 

![image](https://user-images.githubusercontent.com/89953246/151729742-2a2dcaa9-57c8-418b-a518-94da229e3e22.png)

![image](https://user-images.githubusercontent.com/89953246/151729767-ec06bb8e-a100-481b-9e77-1915ec0c8487.png)

![image](https://user-images.githubusercontent.com/89953246/151729810-5587ac24-8304-4613-acab-c12ab6ba2754.png)


## Google Slides
Current Slides:
https://docs.google.com/presentation/d/1suT01KAXhyTDDtzER3DdT4hMqMwAjre-FVmi1HuGfZI/edit?usp=sharing




