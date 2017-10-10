// Example 10_4
clc;funcprot(0);
// Given data
V_wbyomegaD_m=0.1;
C_pm=0.50;// The power coefficient
V_w=10;// The wind speed in m/s
P_wtp=100;// kW
rho=1.2;// The density of air in kg/m^3

// Calculation
omega_p=sqrt((%pi*C_pm*rho*V_w^5)/(8*P_wtp*10^3*V_wbyomegaD_m^2));// s^-2
omega=omega_p*(60/(2*%pi));// RPM
D_p=(1/V_wbyomegaD_m)*(V_w/omega_p);// m
printf("\nThe turbine diameter,D_p=%2.1f m",D_p);
