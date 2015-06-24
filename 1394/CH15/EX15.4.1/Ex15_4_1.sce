
clc
//intialization of variables
tB1 = 38 // days , breakthrough time
tE1 = 46 // days, exhaustion time
c = 2 // number of times flow doubled
//Calculations
theta1 = 2*tB1/(tB1+tE1)// in the first case
ratio1 = 1-theta1 // ratio of unused bed length to total bed length
ratio2 = ratio1*c
tB2 = ((1/c)*(tB1 + 0.5*(tE1-tB1)))*ratio2//breakthrough time for second case
tE2 = (c-ratio2)*tB2/ratio2//exhaustion time for second case
//Results
//answwer slightly wrong in textbook
printf("The breakthrough time for this case is %.1f days",tB2)
