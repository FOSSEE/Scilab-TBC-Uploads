clc
//initialisation of variables
H= -114009.8 //cal
x= -5.6146 //K^-1
y= 0.9466*10^-3 //K^-2
z= 0.1578*10^-6 //K^-3
T= 1000
//CALCULATIONS
H1= H+x*T+y*T^2+z*T^3
//RESULTS
printf (' Enthalpy = %.f cal ',H1)
