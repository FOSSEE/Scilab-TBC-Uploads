// Example 5_5
clc;clear;
// given values
P_gage=400;// kPa
rho=1000;// the density of water in kg/m^3
g=9.81;// the accleration due to gravity in m/s^2

// Calculation
z_2=P_gage*1000/(rho*g);// m
printf('The water jet can rise as high,z_2=%0.1f m\n',z_2);
