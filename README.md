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

#Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The multiple R-squared value is 0.71 (while the p-value remained significant (very small) indicating the model does an adquete job of predecting mpg. 





