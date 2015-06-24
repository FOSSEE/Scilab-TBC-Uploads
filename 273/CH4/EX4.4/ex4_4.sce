clc;clear;
//Example 4.4
//motion of an electron in a uniform magnetic field
//given values
V=200;//potential difference through which electron is accelerated in volts
B=0.01;//magnetic field in wb/m^2
e=1.6*10^-19;//in C
m=9.1*10^-31;//in kg
v=sqrt(2*e*V/m);//electron velocity in m/s
disp(v,'electron velocity is:')
r=m*v/(e*B);//in m
disp(r,'radius of path (in m)is:')