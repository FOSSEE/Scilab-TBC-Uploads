clc();
clear;
//Given
h = 6.625*10^-34; //planck's constant in Js
m = 9.1*10^-31; //electron mass in kg
E1 = 13.6; //Energy of electron in eV
//1 eV = 1.6*10^-19 J
p = sqrt(2*m*E1*1.6*10^-19); //momentum in kg m/s
deltax = h/(2*%pi*p);
// 1 A = 1.0*10^-10 m
printf("Uncertainty in position : %.2f A",deltax/(1.0*10^-10));

