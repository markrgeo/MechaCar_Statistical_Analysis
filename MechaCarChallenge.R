
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> mechaCar_Mpg_Df <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)
> 
> lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD, data=mechaCar_Mpg_Df)

Call:
lm(formula = mpg ~ vehicle_weight + vehicle_length + spoiler_angle + 
    ground_clearance + AWD, data = mechaCar_Mpg_Df)

Coefficients:
     (Intercept)    vehicle_weight    vehicle_length     spoiler_angle  ground_clearance               AWD  
      -1.040e+02         1.245e-03         6.267e+00         6.877e-02         3.546e+00        -3.411e+00  

> 
> summary(lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD, data=mechaCar_Mpg_Df))

Call:
lm(formula = mpg ~ vehicle_weight + vehicle_length + spoiler_angle + 
    ground_clearance + AWD, data = mechaCar_Mpg_Df)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

> 
> suspension_coil_df <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)
> 
> total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), StDev = sd(PSI), .groups = 'keep')
> 
> lot_summary <- suspension_coil_df  %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), StDev = sd(PSI) , .groups = 'keep') 
> 
> t.test(suspension_coil_df$PSI,mu=1500)

	One Sample t-test

data:  suspension_coil_df$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 

> 
> lot1 <- subset(suspension_coil_df, Manufacturing_Lot=="Lot1")
> lot2 <- subset(suspension_coil_df, Manufacturing_Lot=="Lot2")
> lot3 <- subset(suspension_coil_df, Manufacturing_Lot=="Lot3")
> t.test(lot1$PSI,mu=1500)

	One Sample t-test

data:  lot1$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 

> t.test(lot2$PSI,mu=1500)

	One Sample t-test

data:  lot2$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 

> t.test(lot3$PSI,mu=1500)

	One Sample t-test

data:  lot3$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 

> 