//Example 18.2.b : saturation flux density
clc;
clear;
close;
//given data :
format('v',5)
mu0=4*%pi*10^-7;
mu_b=9.27*10^-24;// A.m^2
p=8.9; // in g/cm^3
Na=6.023*10^23;// avogadro's number
A=58.71; // in g/mol
n=((p*Na)/A)*10^6;
Ms=0.60*mu_b*n;
Bs=mu0*Ms;
disp(Bs,"saturation flux density,Bs(tesla) = ")
