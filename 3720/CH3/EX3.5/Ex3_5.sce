// Example 3_5
clc;clear;funcprot(0);
// Given values
h=0.740;// m
g=9.81;// The gravitational acceleration in m/s^2
T=10;// degree celsius
rho=13570;// The density of mercury in kg/m^3

// Calculation
P_atm=(rho*g*h)/1000;// 1kPa=1000 N/m^2
printf('The atmospheric pressure,P_atm=%0.1f kPa\n',P_atm);
