// Example 11_9
clc;funcprot(0);
// Given data
T_1=5;// °C
T_2=25;// °C
phi_1=70/100;// The relative humidity at state 1
V=50;// m^3/min
P=100;// kPa
P_g1=0.872;// kPa
R_a=0.287;// kJ/kg.K

// Calculation
P_a1=P-(phi_1*P_g1);// kPa
rho_a1=P_a1/(R_a*(T_1+273));// kg/m^3
mdot_a=(V/60)*rho_a1;// The mass flux of dry air in kg/s
// Using psychrometric chart
h_1=14;// kJ/kg air
h_2=35;// kJ/kg air
Q=mdot_a*(h_2-h_1);// The rate of heat transfer in kJ/s
// From the chart 
phi_2=19;// The relative humidity at state 2
printf("\nThe rate of heat transfer,Q=%2.1f kJ/s \nThe final relative humidity,phi_2=%2.0f percentage.",Q,phi_2);
// The answer provided in the textbook is wrong
