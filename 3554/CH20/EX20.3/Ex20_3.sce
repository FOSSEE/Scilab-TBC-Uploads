// Exa 20.3

clc;
clear all;

// Given data

Vmax=8;//Maximum value of voltage
Vmin=2;//minimum value of voltage

//Solution
SWR=(Vmax+Vmin)/(Vmax-Vmin);//Standing wave ratio
printf('Standing Wave Ratio = %.2f \n ',SWR);
