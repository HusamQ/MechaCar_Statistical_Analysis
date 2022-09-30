# Loading Library 
library(dplyr)

##Start of Deliverable 1: Linear Regression to predict MPG

#Import amd read in MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

head(MechaCar_mpg)

## 5. Perform linear regression using the lm() function. In the lm() function,pass in all six variables
##add the dataframe as the data parameter.

Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) 
Mecha_lm

##6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

summary <- summary(Mecha_lm)
summary

## Deliverable 2: Create Visualizations for the Trip Analysis
#Import and Read Suspension_Coil.csv file as a table 


suspension_data <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
head(suspension_data)


##creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.``

total_summary <- suspension_data %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
total_summary

##4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI), .groups = 'keep')
lot_summary  

## Deliverable 3: T-Tests on Suspension Coils

#1. t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
#Lot 1
t.test(subset(suspension_data, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
#Lot 2
t.test(subset(suspension_data, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
#Lot 3
t.test(subset(suspension_data, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

