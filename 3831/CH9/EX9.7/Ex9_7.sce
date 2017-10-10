// Example 9_7
clc;funcprot(0);
// Given data
mdot=0.500;// kg/s
p_1=8.00;// MPa
T_1=300;// °C
T_2=100;// °C
x_2=1.00;// The quality of steam at station 2
T_b=20.0;// °C
h_1=2785.0;// kJ/kg
h_2=2676.0;// kJ/kg
s_1=5.7914;// kJ/kg.K
s_2=7.3557;// kJ/kg.K

// Calculation
W_max=mdot*[(h_1-((T_b+273.15)*s_1))-(h_2-((T_b+273.15)*s_2))];// kW
printf("\nThe maximum (reversible) power,W_max=%3.0f kW",W_max);
