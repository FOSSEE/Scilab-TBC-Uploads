//Exa11
clc;
clear;
close;
//given data
rho_i=2*10^-3; //in ohm-m  (there is miss printed in this line in the book)
sigma_i=1/rho_i;
miu_e=0.3;// in m^2/V-s
miu_h=0.1;//  in m^2/V-s
e=1.6*10^-19; // in C
// Formula sigma_i=nita_i*e*(miu_e+miu_h)
nita_i=sigma_i/(e*(miu_e+miu_h));
disp("Carrier density is : "+string(nita_i)+" /m^3");
