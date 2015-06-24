
clc
//initiliazation of variables
Vap = (0.05/22.4)*23.8/760 // Vapour concentration
V = 18.4*10^3 // Air Volume in cc
A = 150 // Liquid Area in Cm^2
t1 = 180 // Time in sec
N1 = (Vap*V)/(A*t1)
k = 3.4*10^-2 // cm/sec
C = 0.9
//Calculations
t = (-V/(k*A))*log(1 - C)
thr = t/3600
//Results
printf("the time taken to reach 90 percent saturation is %.3f hr",thr)
