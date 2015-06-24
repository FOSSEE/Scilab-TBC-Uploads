

clc
//initialization of variables
Vo = 5 // cm/sec
a = 23 //cm^2/cm^3
z = 100 //cm
Crat = 0.62 // Ratio of c/Csat
//Calculations
k = -(Vo/(a*z))*log(1-Crat)
//Results
printf("the mass transfer co efficient is %.1e cm/sec",k)
