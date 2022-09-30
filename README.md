# MechaCar Statistical Analysis 

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. In this analysis, will be performing  multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes then collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to predict MPG. 

# Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

![Multiple Linear Regression](https://github.com/HusamQ/MechaCar_Statistical_Analysis/blob/0af872ca171e36ecf9ff134b16f758b0856413c6/Multiple%20Linear.PNG)
Each Pr(>|t|) value in the summary (above) represents the probability that each coefficient contributes a random amount of variance to the linear model. Using the Mechar_mpg dataset, vehicle_length and ground_clearance are statstically unlikely to provde random amounts of variance to the linear model. vehicle length and ground clearance have a significant impact on mpg. 
# Is the slope of the linear model considered to be zero? Why or why not?
The intercept is statistically siginificant (less than the 0.05) and not zero. This would indicate that the intercept term explains a siginificat amount of variables are equal to zero. It could meaan that the significant features may need scalling or transforming to help omprove the predective power of the model, or there are other variables that can help explain the variability of our dependent variable (mpg) that have not been included in our model. 

# Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The multiple R-squared value is 0.71 (while the p-value remained significant (very small) indicating the model does an adquete job of predecting mpg. 

##  Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
![Summary statistics](https://github.com/HusamQ/MechaCar_Statistical_Analysis/blob/6f5b814c9cc5b4fb8464434ed410230a0747a47d/Images/Summary%20statistics.PNG)

In the total specification are met with variance of 62.29 which is less than 100.
By lots, Lot 1 and 2 are within specifications. However, Lot 3 has a variance that exceeds the specifications.

## T-Test on suspension coils

![T-Test] (https://github.com/HusamQ/MechaCar_Statistical_Analysis/blob/9cab3cd695cb6846e53ae82d8c9bbf50bb0fd583/Images/T-test.PNG)

The null hypothesis = Mean is 1500 and our alternative hypothesis = Mean is not 1500.
The level of significance is 0.05. Lot 1 and Lot 2 have a p-value of 0.06028 and 1, respecitively. Therefore, we cannot reject the null hypothesis. Lot 3, with a p-value of 0.04168 which is less than 0.05, therefore, we can reject the null hyothesis for Lot 3.

## Study Design: MechaCar vs Competition.

The comparesene between MechaCar and other competitive manufactures, the most interests metrics to consumers would be gas efficiency per city and highway, safety rating, price, size (sedan, suv, pickup..etc) and maintenace availabilty and offers.

Null & Alternative Hypothesis Ho = vehicle size has zero or no significant effect on car price Ha = the price of cars increase when vehicle size increases.

Runing multiple linear regression analysis and summary for mileage, safety rating, and the size of the vehicle with regards to how it affects price. Since there are multiple independent variables to analyse against a single dependent variable. therfore, Taking a look at the P-Value for each variable to determine the significance of variable against a significance level of 0.05. Anythiny under 0.05 will require to reject the null hypothesis.

Furthermore, we need safety ratings, price, citg MPG, highway MPG, price and car size catogorized by car model and year. We would review sales data for the past few years to further study and analyze particular type of car to see how it has changed over the years. If we see the average of sales declined, we might want to consider other marketings strategies.





