// Example 3_8
clc;funcprot(0);
// Given data
T_max=2830;// The maximum temperature in °C
rho=200;// The density of the propellant gases in kg/m^3
R=8314.3;// N.m/(kgmole.K)
M=23.26;// The molecular mass of the propellant gases in kg/kgmole
b=0.960*10^-3;// The volume occupied by the molecules of the propellant gases in m^3/kg

// Solution
v=1/rho;// m^3/kg
p_max=(R*(T_max+273.15))/(M*(v-b));// N/m^2
p_max=p_max/6894.76;// lbf/ in^2 absolute 
printf('\nThe maximum pressure in the breech as the cannon fires,p_max=%5.0f psia',p_max);
