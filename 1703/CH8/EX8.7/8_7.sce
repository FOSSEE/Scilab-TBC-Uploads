clc
//initialisation of variables
dm= 0.75 //in
dt= 0.25 //in
dP= 10.4 //lb/in^2
rd= 0.84
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
v1= sqrt(dP*144*g/(rd*w*((dm/dt)^4-1)))
Q= %pi*dm^2*v1*60*w/(4*144*10)
//RESULTS
printf ('Discharge rate = %.1f gal.min',Q)
