
clc
//initialization of variables
d =1000 // kg/m^3
h = 30 // W/m^2-C-sec
Hvap = 2300*10^3 // J/kg
T = 75 // C
Ti = 31 // C
l = 0.04 // m
epsilon = 0.36
c = 3600 // sec/hr
t1 = (Hvap/h)*(1/(T-Ti))*(l*epsilon*d)// sec
t = t1/c // in hr
//Results
printf("The time taken for drying is %.f hr",t)// answer wrong in textbook
