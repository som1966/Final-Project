# Final Project :  What Determines Happiness?


![image](https://user-images.githubusercontent.com/89953246/151729987-95ae97e6-dc31-4f6a-a53b-1697a6d63f16.png)

1) Will any of the selected variables(democracy_index, consumer_price_index, gender_ratio_males_per100_female, infant_mortality, life_expectancy, per_capita_gdp_dollars, population_density, safe_drinking_water_access, seats_held_by_women_pct, unemployment_rate) affect the happiness score (Ladder Score)?
2) Is happiness related to increase in a nation's wealth?
3) Are there any correlated variables that affect happiness be related to a public policy change?

## Data

Twelve data sources were selected and reviewed for potential variables that may impact / predict the "Life Ladder Score".

**Happiness Index (Life Ladder Score) is a "Nationally representative samples of respondents are asked to think of a ladder, with the best possible life for them being a 10, and the worst possible life being a 0. They are then asked to rate their own current lives on that 0 to 10 scale." (https://medium.com/analytics-vidhya/what-is-world-happiness-index-f5744490701f)

![image](https://user-images.githubusercontent.com/89953246/152899292-a33c878c-ad97-48b3-b960-08809a6bb54e.png)

SQL is used to create,join tables, the draft ERD and connect to database from AWS/S3.

![image](https://user-images.githubusercontent.com/89953246/152899468-21f57fc1-757f-40ba-8908-f0c4634f56c1.png)


Data Dictionary:

![image](https://user-images.githubusercontent.com/89953246/151730062-d48f97f0-8414-4239-bfca-f8490e694423.png)



Initial dataset included 235 countries and 10 features.  
The data was ETL - loaded, transformed (removing null values, unnecessary columns, joined with other tables and created dataframes.

![ETL](https://user-images.githubusercontent.com/89953246/150582559-3ff9a15a-2f0f-47fa-8502-4f360310cb9d.png)

### Technology

Technology, languages and algorithms utilized:

![image](https://user-images.githubusercontent.com/89953246/152896282-0895da4d-ade2-4ae6-97c2-4f23c53a1030.png)

## Machine Learning


-------------------------------------------

The first model performed was Linear Regression with a 75/25 train_test_splits with the following equation:
y (Happines_Index) = 

| |Multiple-Linear Regression |Random-Forest Regression|
|:---------------|:------|:----------|
Train_Test_Splits used:|	75/25|	75/25|
|X-variables used:|	All 10|	All 10|
|Regression Value (R<sup>2</sup>)|	0.312	|0.376|
|RMSE score|	0.776|	0.739





>As it is categorically seen that both models are not giving satisfying scores, we then concentrated on determining No_splits’ results for the Linear Regression model only due to the size of the dataset being used. 

>At this point, leaving Random Forest Regression (RFR) behind was an appropriate decision as we feared its limitation, which is “Overfitting” [[1]](#1), and hence it will be a bad idea to use for our dataset. 

>Hence the following result was determined when no splits was used for all the X-variables to find their relationships with Y-variable(life_ladder): 

|	|Multiple-Linear Regression|
|:---------------|:----------|
|Train_Test_Splits used:|	NaN|
|X-variables used:|	All 10|
|Regression Value (R<sup>2</sup>)|	0.747|
|RMSE score|	0.530|




---


><p> After verifying our Linear - Regressional R<sup>2</sup>-score with that of OLS (Ordinary Least Square) Model, we paid heed on NaN splits' RMSE score, which was noticed to be the lesser than that of 75/25 splits. 

>Therefore, for the sake of having an accurate Linear Regression Model, further lowering the RMSE-score was the end goal imagined.
 
>In order to do that, we decided to delete the high p-values’ X-variables from the models one-by-one to see the effect on the RMSE score, as well as on R<sup>2</sup> score. 

The following dataframe depicts the 7-times-rerunning of the model after deleting higher than 0.05% P-values of X-variables: </p>
<figure>
  <img src="no_splits_scores_linearReg.PNG" width="450" height="150">
  <figcaption>Picture 2: Rerunning of Multiple Linear Regression Model with No Splits.</figcaption>
</figure>

><p>Thus, it is noticed that there is no significant effects on the two columns [“R<sup>2</sup>_score” and “rmse_scores”]. That is why, we concentrated on Train_Test_splits by switching it to either be 80/20 or 90/10 train_test_splits on a trial_and_error basis. This decision was made under the scrutiny and the guidance of our Professor Dave Gillis and TAs [Mr Zeb Smith and Mr Hunter Pack]. </p>

  
><p>The same process of deleting the high P-values' X-variables and rerunning of the model was repeated. The following result was found: </p>

<figure>
  <img src="80_20_split_scores_linearReg.PNG" width="450" height="150">
  <figcaption>Picture 3: Rerunning of Multiple Linear Regression Model with 80/20 Splits.</figcaption>
</figure>

<figure>
  <img src="90_10_splits_scores_linearReg.PNG" width="450" height="150">
  <figcaption>Picture 4: Rerunning of Multiple Linear Regression Model with 90/10 Splits.</figcaption>
</figure>


><p> After seeing the picture, it is clearly seen that the model works best when the highest p-values’ X-variables (“life_expectancy" & "consumer_price_index") are deleted by having the best and satisfying R<sup>2</sup> and the least RMSE scores.</p>


<figure>
  <img src="scores_comparisons.png" width="450" height="100">
  <figcaption>Picture 5: Rerunning of Multiple Linear Regression Model with All-the-Splits.</figcaption>
</figure>



---

## Result: 
>With the 90/10 Splits, the best RMSE and  R<sup>2</sup> scores were satisfyingly achieved that enabled us to find the corelation of each X-variables with the Happiness (Y-variable). 

The following picture shows the Line equation of the project. 

<figure>
  <img src="result_lineEq_DF.PNG"
   width="450" height="70">
  <figcaption>Picture 6: Dataframe depicts the Multiple Variable Linear Regressional Line Equation with the Best RMSE and R<sup>2</sup> scores.</figcaption>
</figure>


![image](https://user-images.githubusercontent.com/89953246/152898239-cf8b15d3-3396-4cfb-82cf-b4e5521fa304.png)


Reference:
1. Keboola . (n.d.). The Ultimate Guide to Random Forest regression. The Ultimate Guide to Random Forest Regression. Retrieved February 7, 2022, from https://www.keboola.com/blog/random-forest-regression 

2. ML - advantages and disadvantages of linear regression. GeeksforGeeks. (2020, June 3). Retrieved February 7, 2022, from https://www.geeksforgeeks.org/ml-advantages-and-disadvantages-of-linear-regression/ 

3. https://rpubs.com/mpfoley73/527767

## Dashboard
The dashboard reflects three parts of the project: 

1) User's ability to interact with the soci-economic data tables for each country utilized;
2) Provides an overview of the machine learning method and revewi the results of the final model.
3) Allow the user to be directed to the actual 2019 World Happiness Report.

![image](https://user-images.githubusercontent.com/89953246/152698154-1ff305b3-482c-4992-a9d6-2ebbb7dae52f.png)

The dashboard is located in Tableau (https://public.tableau.com/app/profile/nancy.condon#!/). 

## Conclusion and Recommendations

### Conclusions:

  - Soci-economic factors  can influence the Happiness Index.
  
  - GDP, Gender ratio, % Safe Drinking Water, % Women holding government seats were shown to increase the Happiness Index.
  
  - The use of public policy does provide an opportunity to improve a country’s happiness.
  
### Recommendations for future analyses: 

  - Larger dataset, not all countries had the required data.
  
  - Classification of features and utilizing Logistic Regression, Random Forest or Neural Networks.
  
  - Additional datasets that may have more specificity, such as:
  
      The use of technology / cell phone usage
      
      Health indices

      Industrialization

## Google Slides
Current Slides:
https://docs.google.com/presentation/d/1suT01KAXhyTDDtzER3DdT4hMqMwAjre-FVmi1HuGfZI/edit?usp=sharing

