// Exa 1.11
clc;
clear;
close;
format('v',10)
// Given data
rho = 3000;// in ohm-m
n = 1.1*10^6;// in /m^3
e = 1.6*10^-19;// in C
//miu_e = 3*miu_h   (i)
// miu_e+miu_h = 1/(rho*e*n)    (ii)
// From eq (i) and (ii)
miu_h = (1/(rho*e*n))/4;// in m^2/V-s
disp(miu_h,"The holes mobility in m^2/V-s is");
miu_e = 3*miu_h;// in m^2/V-s
disp(miu_e,"The electron mobility in m^2/V-s is");

// Note: The calculated value of hole mobility is wrong .
