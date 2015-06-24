//Example 5_10
clc;
clear;
close;
format('v',6);
//given data : 
sigma_p=3;//(ohm-cm)^-1
sigma_n=0.1;//(ohm-cm)^-1
Ln=0.15;//cm
Lp=0.15;//cm
e=1.6*10^-19;//C/electron
mu_p=1800;//cm^2/V-s//For Ge
mu_n=3800;//cm^2/V-s//For Si
VT=0.026;///eV//at T=27 degree C
A=1.5;//mm^2
A=A*10^-6;//m^2
b=mu_n/mu_p;//unitless
ni=2.5*10^15;//m^-3
sigma_i=(mu_n+mu_p)*ni*e;//(ohm-m)^-1
I0=A*VT*b*sigma_i^2/(1+b)^2*(1/Lp/sigma_p+1/Ln/sigma_n)*10^6;//micro A
disp(I0,"Reverse saturation point of current(micro A)");
