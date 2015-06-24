clc
//Intitalisation of variables
clear
T= 25 //C
E= 0.0455 //volt
r= 3.38*10^-4 //volt degree^-1
F= 96500
r1= 0.2390
//CALCULATIONS
dH= -F*r1*(E-(273+T)*r)
//RESULTS
printf ('Enthalpy = %.f calories ',dH) 
