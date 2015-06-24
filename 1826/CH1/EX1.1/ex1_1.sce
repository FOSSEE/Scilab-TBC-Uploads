// Example 1.1, page no-8
clear
clc

r=0.45*10^-3 //m
L=0.3 //m
rho=17*10^-9 //ohm-m 
//Calculations
R=rho*(L/(%pi*r^2))
printf("The Resistance of the wire is %.3f ohm",R)
