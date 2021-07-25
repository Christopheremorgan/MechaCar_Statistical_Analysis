library(dplyr)
library(tidyverse)

# Multivate regression to predict MPG
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_df)) #generate summary statistics

# Summary statistics on suspension coils
coil_tbl <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- coil_tbl %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create total summary table
lot_summary <- coil_tbl %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create lot summary table

# T-Tests on suspension coils
t.test(coil_tbl$PSI,mu=1500) #compare mean across 3 lots to presumed population means
#filter and t-test each lot
lot1_tbl <- subset(coil_tbl, Manufacturing_Lot == "Lot1") 
t.test(lot1_tbl$PSI,mu=1500) #lot 1 mean PSI compared to presumed population PSI mean
lot2_tbl <- subset(coil_tbl, Manufacturing_Lot == "Lot2") 
t.test(lot2_tbl$PSI,mu=1500) #lot 2 mean PSI compared to presumed population PSI mean
lot3_tbl <- subset(coil_tbl, Manufacturing_Lot == "Lot3") 
t.test(lot3_tbl$PSI,mu=1500) #lot 3 mean PSI compared to presumed population PSI mean
