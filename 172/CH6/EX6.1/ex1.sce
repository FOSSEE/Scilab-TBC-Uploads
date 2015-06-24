//example 1
//calculating mass flow rate in kg/s
clear
clc
R=0.287 //in kJ/kg-K
T=25 //temperature in celsius
P=150 //pressure in kPa
v=R*(T+273.2)/P //specific volume in m^3/kg
D=0.2 //diameter of pipe in metre
A=%pi*D^2/4 //cross sectional area in m^2
V=0.1 //velocity of air in m/s
m=V*A/v //mass flow rate in kg/s
printf("\n hence,the mass flow rate is m=%.4f kg/s.\n",m)