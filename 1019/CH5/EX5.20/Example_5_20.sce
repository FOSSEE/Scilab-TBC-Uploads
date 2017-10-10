//Example 5.20
clear;
clc;

//Given
delHf=335;//latent heat of fusion in J g^-1
Vs=1.0908;//volume of solid in cm^3 g^-1
Vl=1.0002;//volume of liquid in cm^3 g^-1
T=273;//temperature in K

//To determine the decrease in melting point with increase in pressure
delVm=Vl-Vs;//volume change in cm^3 g^-1
a=(delHf*10)/(T*delVm*1.01325);//a=(delP/delT)
b=a^(-1);//b=(delT/delP)
mprintf('An increase in pressure of 1 atm lowers the freezing point by %f K atm^-1',b);
//end