clc
// Intialization of variables
d2 = 0.12 //m
A2 = (%pi/4)*(d2)^2
Df = 1000 // Pa
D = 1.23 //Kg/m^3
Kl1 = 0.05
Kl2 = 0.5
// calculations
Q1 = A2*((Df)/(D*(1+Kl1)/2))^0.5
Q2 = A2*((Df)/(D*(1+Kl2)/2))^0.5
//Results
printf(" Volume rate for rounded entrance is %.3f m^3/s",Q1)
printf("\n  Volume rate for cylindrical entrance is %.3f m^3/s",Q2)
