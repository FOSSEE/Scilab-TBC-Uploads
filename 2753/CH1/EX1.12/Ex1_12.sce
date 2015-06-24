//Example 1.12: 
clc;
clear;
close;
//given data :
mu_n=0.13;// in m^2/V-s
mu_p=0.05;// in m^2/V-s
ni=1.5*10^16;// in m^-3
e=1.6*10^-19;// in C
p=1/((e*ni)*(mu_n+mu_p));
format('v',7)
disp(p,"The resistivity,p(ohm-m) = ")
