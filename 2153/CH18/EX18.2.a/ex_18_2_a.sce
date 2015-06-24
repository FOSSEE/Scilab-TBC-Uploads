//Example 18.2.a : saturation magnetization
clc;
clear;
close;
//given data :
mu_b=9.27*10^-24;// A.m^2
p=8.9; // in g/cm^3
Na=6.023*10^23;// avogadro's number
A=58.71; // in g/mol
n=((p*Na)/A)*10^6;
Ms=0.60*mu_b*n;
disp(Ms,"saturation magnetization,Ms(A/m) = ")
