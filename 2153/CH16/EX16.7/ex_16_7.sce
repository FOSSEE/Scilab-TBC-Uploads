//Example 16.7 : conductivity
clc;
clear;
close;
//given data :
e=1.602*10^-19;
n_i=5.021*10^15; // in m^-3
mu_n=0.48;// in m^2/V-sec
mu_p=0.013;// in m^2/V-sec
sigma=n_i*(e*(mu_n+mu_p));
disp(sigma,"the conductivity,sigma(ohm^-1 m^-1) = ")
