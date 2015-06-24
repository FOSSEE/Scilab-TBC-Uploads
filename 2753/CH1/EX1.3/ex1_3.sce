//Example 1.3: 
clc;
clear;
close;
//given data :
sigma=500;// in ohm^-1 m^-1
mu_e=.39;// m^2/V-s
e=1.6*10^-19;// in V
ne=sigma/(e*mu_e);
format('e',9)
disp(ne,"number density of donor,ne(m^-3) = ")
