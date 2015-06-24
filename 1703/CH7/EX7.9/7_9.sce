clc
//initialisation of variables
clear
g= 9.8 //m/sec^2
h1= 10 //in
h2= 12 //in
r1= 1.32
r2= 1.56
r3= 1.97
r4= 4.10
r5= 2.64
//CALCULATIONS
Q= sqrt(32.2)*(h2/18)^1.5
T= 10^5*(r1+2*r3+r4+4*(r3+r5))/(6*h2*60*60)
//RESULTS
printf ('Actual discharge = %.2f BH^1.5 cuses',Q)
printf ('\n Time = %.1f  hr',T)

//The answer is a bit different due to rounding off error in textbook

