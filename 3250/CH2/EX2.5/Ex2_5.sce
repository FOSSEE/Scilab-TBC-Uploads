clc 
// Given that
thetaF= 1540 // Temperature of mould face in degree centigrade
Theta0 = 28 // Initial temperature of mould in Degree centigrade
L= 272e3 // Latent heat of liquid metal in J/Kg
Dm = 7850 // Density of liquid metal in Kg/m^3
c = 1.17e+3 //Specific heat of sand in J/Kg-K
k = 0.8655 // Conductivity of sand in W/m-K
D= 1600 // Density of sand in Kg/m^3
h = 0.1 // Height in m
b = 10 // Thickness of slab in cm
r =h/2// V/A in meter
// Sample Problem 5 on page no. 66
printf("\n # PROBLEM 2.5 # \n")
lambda = (thetaF - Theta0)*(D*c)/(Dm*L)
Beta1 = 2*lambda/sqrt(%pi)
Alpha = k /(D*c)
ts1 = r^2 /((Beta1^2)*Alpha)//In sec
ts1_=ts1/3600 // In hour
Beta= poly(0,"Beta");
p=Beta^2 - lambda*(2/sqrt(%pi))*Beta -lambda/3
Beta2 = roots(p)
printf(" The value of Beta2 is %f, ",Beta2)
printf("\n We only take the positive value of Beta2 , \n Hence Beta2=1.75")
r1 = r/3
ts2 = (r1^2)/((1.75^2)*Alpha) // in sec
ts2_=ts2/3600//in Hour
printf("\n\n Solidification time for slab-shaped casting = %f hr,\n Solidification time for sphere = %f hr", ts1_,ts2_)
