//Example 5_13
clc;
clear;
close;
format('e',9);
//given data : 
Ln=0.1;//cm
Lp=0.1;//cm
e=1.6*10^-19;//C/electron
//For Si
ni=1.5*10^10;//m^-3
sigma_p=0.01;//(ohm-cm)^-1
sigma_n=0.01;//(ohm-cm)^-1
mu_n=1300;//cm^2/V-s//For Si
mu_p=500;//cm^2/V-s//For Ge
b=mu_n/mu_p;//unitless
sigma_i=(mu_n+mu_p)*ni*e;//(ohm-m)^-1
YSi=b*sigma_i^2/(1+b)^2*(1/Lp/sigma_p+1/Ln/sigma_n);//(ohm-cm^2)^-1
//For Ge
ni=2.5*10^13;//m^-3
sigma_p=1;//(ohm-cm)^-1
sigma_n=1;//(ohm-cm)^-1
mu_n=3800;//cm^2/V-s//For Si
mu_p=1800;//cm^2/V-s//For Ge
b=mu_n/mu_p;//unitless
sigma_i=(mu_n+mu_p)*ni*e;//(ohm-m)^-1
YGe=b*sigma_i^2/(1+b)^2*(1/Lp/sigma_p+1/Ln/sigma_n);//(ohm-cm^2)^-1
ratio=YGe/YSi;
disp(ratio,"Ratio of reverse saturation current in Ge to that in Si");
//Answer given in the book is not accurate.
