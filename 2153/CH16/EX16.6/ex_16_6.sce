//Example 16.6 : intrinsic carrier density
clc;
clear;
close;
//given data :
format('v',10)
e=1.602*10^-19;
p=3000;// in ohm/m
sigma=1/p;// in ohm/m
mu_n=0.14;// in m^2/V-sec
mu_p=0.05;// in m^2/V-sec
n_i=sigma/(e*(mu_n+mu_p));
disp(n_i,"the concentration,n_i(/m^3) = ")
