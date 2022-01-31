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

In considering models for the dataset and questions to be answered, Multiple Linear Regression was the better choice because the data was not broken down by classification and the dataset is small of only 100 datapoints!

### Model 1: Multiple Variable Linear Regression

First, Multiple Linear Regression was used to find the relationship of the x-variables with the y-variable (Life Ladder). 

y (life_ladder) Vs X ('democracy_index', 'consumer_price_index', 'gender_ratio_males_per100_female', 'infant_mortality_per1000_births', 'life_expectancy', 'per_capita_gdp_dollars', 'population_density', 'safe_drinking_water_access_pct', 'seats_held_by_women_pct', 'unemployment_rate')

The result for all the x-variables were : 
R2score: 0.636295405929806
root mean squared error:  0.4689012451019692

![alt text](https://github.com/Zohairk4help/gwu_groupProject_happiness/blob/main/present_2ndseg/R2ScoreForallvariable.PNG?raw=true)


  As this model's R2 came to be 0.636 with different p_values, indicating there was little correlation between the predicted and observed values.  It was decided to drop the highest p_values for X-variables up until the point the model has its least RMSE score and the reasonable R2 scores.

![alt text](https://github.com/Zohairk4help/gwu_groupProject_happiness/blob/main/present_2ndseg/DFshowingrerunningML_dropingx-variables.PNG?raw=true)


## DF showing the results after rerunning of the Multiple Linear Regression after one-by-one features dropping: 
The following features were dropped: "country_name", "country_code", "life_expectancy" & "consumer_price_index"
The accuracy (RMSE-Score) dropped to 0.118.

![image](https://github.com/Zohairk4help/gwu_groupProject_happiness/blob/main/present_2ndseg/ML_LinearRegR2score_RMSEscore.PNG)

###### please Note: for the Model 2 (Random Forest Regressor) and the Model 3 (Random Forest Regressor), working on seeing and comparing the results.



## Dashboard
The dashboard is located in Tableau (https://public.tableau.com/app/profile/nancy.condon#!/). 

![image](https://user-images.githubusercontent.com/89953246/151729742-2a2dcaa9-57c8-418b-a518-94da229e3e22.png)

![image](https://user-images.githubusercontent.com/89953246/151729767-ec06bb8e-a100-481b-9e77-1915ec0c8487.png)

![image](https://user-images.githubusercontent.com/89953246/151729810-5587ac24-8304-4613-acab-c12ab6ba2754.png)


## Google Slides
Current Slides:
https://docs.google.com/presentation/d/1suT01KAXhyTDDtzER3DdT4hMqMwAjre-FVmi1HuGfZI/edit?usp=sharing




