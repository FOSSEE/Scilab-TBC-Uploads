
clc
//initialization of variables
T = 32 //F
T0 = 10//F
Tinf= 80 //F
U = 3.6 //Btu/hr-ft^2-F
A = 27 //ft^2
d = 8.31 //lb/gal
V = 100 //gal
Cv = 1//Btu/lb-F
//Calculations
t = (-log((T-T0)/(Tinf-T0)))*d*V*Cv/(U*A)//hr
//Results
printf("The time we can wait before the water in the tank starts to freeze is %.f hr",t)
