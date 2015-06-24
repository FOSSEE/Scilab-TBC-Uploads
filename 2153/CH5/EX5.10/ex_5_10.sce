//Example 5.10 : density and drift velocity 
clc;
clear;
close;
//given data :
format('v',9)
e=1.602 *10^-19;
b=58*10^6;// in ohm^-1 m^-1
mu_n=3.5*10^-3;// in m^2/V s
E=0.5; // in V/m
n=b/(e*mu_n);
disp(n,"density,n(m^-3) = ")
v=mu_n*E;
disp(v,"drift velocity,v(m/s) = ")
