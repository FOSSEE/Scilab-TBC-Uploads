clc
//Initialization of variables
k = 1.40
R = 1716 //ft-lb/slug.R
T = 394
s = (550*5280)/3600 // ft/s
//Calculations
c = (k*R*T)^0.5 
r = s/c //Ratio of speeds
//Results
printf("the ratio of speeds is %.3f ",r)
