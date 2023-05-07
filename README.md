# MechaCar_Statistical_Analysis
Module Challenge 16 - R, RStudio, and Statistics

## Linear Regression to Predict MPG

LinearRegressionModel.png

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
-The various vehicle lengths and ground clearance both represent significant, non-random variance to the MPG values. Both contibute to the efficiency of the cars listed in this data.

Is the slope of the linear model considered to be zero? Why or why not?
-The linear regression formula displays a non-zero slope on the variables being tested. We have measured a p-value of 5.35e-11. There is enough difference here from the 0.05% significance level to illustrate the trend of a slope in our data. By doing so we reject the null hypothesis.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
-We see an r-squared value of 0.7149 which presents a strong position reflecting 71% accuracy for the data being significant in determining MPG.

## Summary Statistics on Suspension Coils

Total_Summary.png

Lot_Summary.png

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
-Averaging the variance of cars across all lots we see a value of 62.29356. This is below the pounds per square inch limitation of 100psi. When looking specifically at each lot, we find lots 1 and 2 are under these parameters, however lot three goes well beyond.

## T-Tests on Suspension Coils

t.tests.png

Briefly summarize your interpretation and findings for the t-test results.

-Lot 1: The mean is aligned within the confidence ranges and the statistics have a normal distribution. The data for this lot is not statistically significant.

-Lot 2: The details of lot 2 are very similar to lot 1. The mean is within the confidence range and again we see a normal distribution. 

-Lot 3: The data for this lot varies from the other two, and we do not have a normal distribution of the data ranges. The mean is still within the confidence ranges however. This one lot is not enough to reject the null hypothesis given the other two lots data would support it, and even the mean of this is close to the population mean limitations.

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition.

What metric or metrics are you going to test?
-Vehicle Safety 

What is the null hypothesis or alternative hypothesis?
-The null hypothesis is that MechaCar's vehicles are better than their competitors vehicles.
-The alternative hypothesis would be that MechaCar's safety ratings are worse than their competitor's vehicles.

What statistical test would you use to test the hypothesis? And why?
-Multiple linear regression could compare data on performance in specific hazard conditions. 

What data is needed to run the statistical test?
-Dependant variables would be used for the analysis, and compare this to determined safety ratings. Some measures to consider would be time to excelerate, brake performance time, seatbelt and airbag performance times, as well as looking at how the vehicles handle in challenging weather. Linear regressions would allow for comparisons in performance in each of these scenarios. 