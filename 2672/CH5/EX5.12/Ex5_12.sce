//Example 5_12
clc;
clear;
close;
format('v',6);
//given data : 
A=5;//mm^2
A=A*10^-2;//cm^2
Ln=0.01;//cm
Lp=0.01;//cm
sigma_p=0.01;//(ohm-cm)^-1
sigma_n=0.01;//(ohm-cm)^-1
mu_p=500;//cm^2/V-s//For Ge
mu_n=1300;//cm^2/V-s//For Si
e=1.6*10^-19;//C/electron
VT=0.026;///eV//at T=27 degree C
b=mu_n/mu_p;//unitless
ni=1.5*10^10;//m^-3
sigma_i=(mu_n+mu_p)*ni*e;//(ohm-m)^-1
I0=A*VT*b*sigma_i^2/(1+b)^2*(1/Lp/sigma_p+1/Ln/sigma_n)*10^12;//pA
disp(I0,"Reverse saturation current(pA)");
