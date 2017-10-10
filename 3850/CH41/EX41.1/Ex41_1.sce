
//To Calculate the Factor Increase in the Value of Thermionic Current

//Example 41.1

clear;

clc;

T1=1500;//Initial Temperature in Kelvin

T2=2000;//Final Temperature in Kelvin

k=1.38*10^-23;//Boltzmann Constant

phi=4.5*1.6*10^-19;//Work Function in electron-volts

Ir=(T2/T1)^2*exp((-phi/k)*((1/T2)-(1/T1)));//Factor Increase in the Value of Thermionic Current

printf("Thermionic current increases %.d times when temperature is increased from 1500 K to 2000 K",Ir);
