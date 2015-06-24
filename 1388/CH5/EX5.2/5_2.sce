clc
//initialisation of variables
T= -40 //C
v= 217.4 //cm^3
r= 8.8 // atm deg^-1
m= 18 //gms
//CALCULATIONS
H= (273+T)*(-v*m/1000)*r*(1.987/82.05)
//RESULTS
printf (' Increase in enthalpy = %.f cal mole^-1',H-1)
