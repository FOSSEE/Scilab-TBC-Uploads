clc 
// Given that
thetaF= 1540 // Temperature of mould face in degree centigrade
thetaO = 28 // Initial temperature of mould in Degree centigrade
L= 272e3 // Latent heat of iron in J/Kg
Dm = 7850 // Density of iron in Kg/m^3
Cs = 0.67e+3 //Specific heat of iron in J/Kg-K
C = 0.376e3 //Specific heat of copper in J/Kg-K
Ks = 83 // Conductivity of iron in W/m-K
K = 398 // Conductivity of copper in W/m-K
D= 8960 // Density of copper in Kg/m^3
h = .1 // Height in m
hF = 1420 // Total heat transfer coefficient across the casting-mould interface in W/m^2-°C
// Sample Problem 7 on page no. 75
printf("\n # PROBLEM 2.7 # \n")
AlphaS = K /(D*C)
thetaS = 982 //In °C as in example 2.6
h1= (1+(sqrt((Ks*Dm*Cs)/(K*D*C))))*hF
a = 1/2 + (sqrt((1/4)+Cs*(thetaF-thetaS)/(3*L)))
delta=h/2
ts = (delta+((h1*delta^2)/(2*Ks)))/((h1*(thetaF-thetaS))/(Dm*L*a)) // in sec
ts_ = ts/3600 // in hours
h2= (1+(sqrt((K*D*C)/(Ks*Dm*Cs))))*hF
gama= ((h2^2)/(K^2))*AlphaS*ts
thetaS_ = thetaO + (thetaS-thetaO)*(1-((exp(gama))*(1-(erf(sqrt(gama))))))
printf("\n Solidification time = %f hr,\n  The surface temperature of the mould = %f ° C", ts_,thetaS_)
// The value of the surface temperature of the mould in the book is given as 658.1° C, Which is wrong.
