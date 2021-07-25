# MechaCar_Statistical_Analysis
An auto manufacturer would like to leverage summary statistics and statistical testing improve the manufacturing process and to inform decisions for a new product lineup.


## Linear Regression to Predict MPG

With multivariate regression the most statistically significant variables impacting miles per gallon are vehicle length and ground clearance.  With the intercept at -104 and statistically significant we can also assume the slope of the line is not 0 and that we have opportunity to better define the independent variables driving mpg.  Although there could be some overfitting with variables like spoiler_angle that are not statistically signficant, the strong r-sqare value of 0.71 and a signficant p-value indicates that the model is able to explain much of the mpg variance between vehicles with the selected independent variables. 

![image_name](https://github.com/Christopheremorgan/MechaCar_Statistical_Analysis/blob/main/LinRegressScreenshot.png)


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  When we look at all 3 lots together we see that the variance is within the acceptable range.  When we perform the statistical analysis on each inidividual lot we find that the variance is very tight for the first two lots, but the third lot has a variance well beyond the 100 pounds per square inch standard, and therefore does not pass quality control.

#### Suspension Coils Total Summary Statisics 

![image_name](https://github.com/Christopheremorgan/MechaCar_Statistical_Analysis/blob/main/CoilTotalSummary.png)

#### Suspension Coils Lot Summary Statisics

![image_name](https://github.com/Christopheremorgan/MechaCar_Statistical_Analysis/blob/main/CoilLotSummary.png)

## T-Tests on Suspension Coils

T-Tests confirm what we found in the summary statistics of the the suspension coil lots.  Assuming a significance level of p = 0.05 or higher, there is evidence to reject the null hypothesis that lot 3 is statistically similar to the expected 1500 PSI standard for manufactured suspension coils.  In other words, lot 3 does not statistically meet the overall coil production standard when evaluated separately from the other two lots.

#### T-Test Across All Coil Lots 

![image_name](https://github.com/Christopheremorgan/MechaCar_Statistical_Analysis/blob/main/AllLotsTtest.png)

#### T-Test Coil Lot 1

![image_name](https://github.com/Christopheremorgan/MechaCar_Statistical_Analysis/blob/main/Lot1Ttest.png)

#### T-Test Coil Lot 2

![image_name](https://github.com/Christopheremorgan/MechaCar_Statistical_Analysis/blob/main/Lot2Ttest.png)

#### T-Test Coil Lot 3

![image_name](https://github.com/Christopheremorgan/MechaCar_Statistical_Analysis/blob/main/Lot3Ttest.png)


## Study Design: MechaCar vs Competition

The MechaCar Marketing department would like to run a campaign about how MechaCar's vehicles have the best fuel economy relative to their competitors and would like to update a statistcal study to ensure the campaign can move forward as planned.  MechaCar will compare city and highway fuel efficiency data for their cars and from same class cars from their competitors.  The data will be validated for randomness and biasness.

A two sample t-test will be used to compare mpg data from MechaCar vehicles with the same class of vehicle from each competitor.  The null hypothesis will be that MechaCar MPG <= Competitor MPG while the alternative hypothesis is that MechaCar MPG > Competitor MPG.  


## Code File

[MechaCar Rscript File](https://github.com/Christopheremorgan/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)

