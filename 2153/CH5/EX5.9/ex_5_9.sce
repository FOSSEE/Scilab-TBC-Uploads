// Example 5.9: mobility and drift velocity
clc, clear;
// given :
b=6.5*10^7; // conductivity in ohm^-1.m^-1
e=1.602*10^-19; // in C
n=6*10^23; //
E=1; // in V/m
mu=b/(e*n);
v=mu*E;
disp(mu,"mobility ,mu(m^2/volt-sec) = ")
disp(v,"drift velocity,v(m/sec) = ")
// mobility and drift is calculated wrong in book
