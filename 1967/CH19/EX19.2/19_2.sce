clc
//initialisation of variables
clear
E= -0.344 //volt
E1= -0.401 //volt
R= 0.05914 //volt
n= 4
T= 25 //C
H= -7300 //cal
//CALCULATIONS
po2= 10^(-n*(E-E1)/R)
dH= -0.5*n*H+0.5*n*(273+T)
//RESULTS
printf ('Pressure of Oxygen = %.1e atm',po2)
printf ('\n Change in Enthalpy = %.f cal',dH+4)
