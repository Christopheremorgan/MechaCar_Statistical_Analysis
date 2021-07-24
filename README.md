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

## Code File
[MechaCar Rscript File](https://github.com/Christopheremorgan/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)

