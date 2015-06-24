//Example 16.1 : concentration
clc;
clear;
close;
format('v',9)
//given data :
e=1.602*10^-19;
sigma_i=5*10^-4;// in ohm/m
mu_n=0.14;// in m^2/V-sec
mu_p=0.05;// in m^2/V-sec
n_i=sigma_i/(e*(mu_n+mu_p));
disp(n_i*10^6,"the concentration,n_i(/cm^3) = ")
