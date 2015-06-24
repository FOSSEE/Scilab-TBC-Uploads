// Example 5.6: conductivity
clc, clear
// given :
e=1.6*10^-19; // in C
T=300; // temerature in K
t=2*10^-14; // time in sec
c=63.54; // atomic weight of copper in a.m.u
m=9.1*10^-31; // mass in kg
// we know that 63.45 grams of copper contains 6.023*10^23 free electrons since one atom contributes one electron.the volume of 63.54 gram of copper is 8.9 cubic centimetre(c.c).
n=6.023*10^23/(c/8.9); //number of electrons per unit volume(c.c)
n1=n*10^6; // the number of electrons per m^3
b=(e^2*n1*t)/m;
disp(b,"conductivity,b(mho/m) = ")
