clc;
clear;
V=2000 //potential in V
e=1.602*10^-19 //electronic charge in eV
m=9.1*10^-31 //mass of electron in kg

//Calculation
u=sqrt((2*V*e)/m)

mprintf("velocity with which electron beam will travel= %.2e m/s",u)

