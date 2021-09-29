## DELIVERABLE 1
#3. Load Dplyr
library(dplyr)

#4. Import CSV
mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#5. multi linear regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg) #generate multiple linear regression model

#6. summary
summary(reg)

## DELIVERABLE 2

# 2. import csv
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# 3. create summary df
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

# 4. grouped by lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

## DELIVERABLE 3

# 1. t-test
t.test(suspension_coil$PSI,mu=1500)

# 2. lot t-tests

l1 <- suspension_coil[suspension_coil$Manufacturing_Lot=='Lot1',]
t.test(l1$PSI,mu=1500)
l2 <- suspension_coil[suspension_coil$Manufacturing_Lot=='Lot2',]
t.test(l2$PSI,mu=1500)
l3 <- suspension_coil[suspension_coil$Manufacturing_Lot=='Lot3',]
t.test(l3$PSI,mu=1500)
