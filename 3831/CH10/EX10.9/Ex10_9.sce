// Example 10_9
clc;funcprot(0);
// Given data
m=18.0;// kg/s
T_b=350.0;// °C
W=20*10^3;// kW
// Station 1
T_1=500.0;// °C
p_1=3.00;// MPa
h_1=3456.5;// kJ/kg
s_1=7.2346;// kJ/kg.K
// Station 2
p_2=0.0100;// MPa
x_2=0.960;// The quality of steam
h_2f=191.8;// kJ/kg
h_2fg=2392.8;// kJ/kg
h_2=h_2f+(x_2*h_2fg);// kJ/kg
s_2f=0.6491;// kJ/kg.K
s_2fg=7.5019;// kJ/kg.K
s_2=s_2f+(x_2*s_2fg);// kJ/kg.K
// Ground state 
x_0=0.00;// The quality of steam
T_0=20.0;// °C
h_0=83.9;// kJ/kg
s_0=0.2965;// kJ/kg.K

// Calculation
a_f1=(h_1-h_0)-((T_0+273.15)*(s_1-s_0));// kJ/kg
a_f2=(h_2-h_0)-((T_0+273.15)*(s_2-s_0));// kJ/kg
Q=(W+(m*(a_f2-a_f1)))/(1-((T_0+273.15)/(T_b+273.15)));// kW
printf("\nThe rate of heat loss from the surface of the turbine,Q=%4.0f kW",Q);
// The answer vary due to round off error
