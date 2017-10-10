// Example 2_5
clc;funcprot(0);
// Given data
V=0.6;// m^3
P_gage=200;// The gage pressure in kPa
T=20+273;// K
P_atm=100;// kPa
R=287;// N.m/kg.K

// Calculation
P=P_gage+P_atm;// The absolute pressure in kPa
m=(P*10^3*V)/(R*T);// The mass of air in kg
printf("\nThe mass of air,m=%1.2f kg",m);
