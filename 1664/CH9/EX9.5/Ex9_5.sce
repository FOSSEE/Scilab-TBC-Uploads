
//Example No.9.5.
//Page No.269.
//To calculate carrier concentration.
clc;clear;
Rh = 3.68*10^(-5);//Hall coefficient -[m^3/C].
e = 1.6*10^(-19);//Electron charge -[C].
disp('1)Since the hall voltage is negative,charge carriers of the semiconductors are electrons')
n = ((3*%pi)/(8*Rh*e));//Carrier concentration.
printf("\n2)The carrier concentration is %3.3e m^-3",n);
