// Example 3_6
clc;clear;funcprot(0);
// Given values
m=60;// Mass in kg
A=0.04;// The Cross sectional area in m^2
P_atm=.97;// Local atmospheric pressure in bar
g=9.81;// The gravitational acceleration in m/s^2

// Calculation
//(a)
P=P_atm+((m*g)/A)/10^5;// 1 bar=10^5 N/m^2
printf('The gas pressure in the piston cylinder P=%0.2f bars\n',P);
