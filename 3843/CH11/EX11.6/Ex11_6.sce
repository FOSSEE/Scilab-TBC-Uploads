// Example 11_6
clc;funcprot(0);
// Given data
T=25;// °C
T_dp=10;// The dew point temperature in °C
P=100;// kPa
V=150;// m^3
P_g=3.169;// kPa
M_v=18;// kg/k.mol
M_a=28.97;// kg/k.mol
R_a=0.287;// kJ/kg.K

// Calculation
// (a)
P_v=1.228;// kPa
P_a=P-P_v;// The partial pressure of air in kPa
w_1=0.622*(P_v/P_a);// The humidity ratio in kg H2O/kg dry air
w_2=0.01205;// kg H2O/kg dry air
dw=w_2-w_1;// The difference in humidity ratio in kg H2O/kg dry air
dm_v=dw*((P_a*V)/(R_a*(T+273)));// kg H2O
// (b)
phi=1.608*((w_1*P_a)/(P_g));// The relative humidity in %
printf("\n(a)The amount of water vapor that will condense,delm_v=%0.3f kg H2O \n(b)The relative humidity,phi=%0.3f or %2.1f percentage.",dm_v,phi,phi*100);
