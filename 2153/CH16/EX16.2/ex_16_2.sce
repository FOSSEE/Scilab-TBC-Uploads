//Example 16.2 : intrinsic carrier
clc;
clear;
close;
format('v',9)
//given data :
e=1.602*10^-19;
p_i=2*10^-4;// in ohm-m
mu_n=6;// in m^2/V-sec
mu_p=0.2;// in m^2/V-sec
n_i=1/(e*(mu_n+mu_p)*p_i);
disp(n_i,"the intrinsic carrier,n_i(/m^3) = ")
