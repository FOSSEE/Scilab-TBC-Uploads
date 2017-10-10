// Example 11_3
clc;funcprot(0);
// Given data
p=1.00;// MPa

// Solution
// From Table C.2b at p = 1.00 MPa, we find that,
h_fg=2015.3;// kJ/kg
T_sat=179.90;// °C
s_fg=h_fg/(T_sat+273.15);// kJ/kg .K
printf("\nThe phase change entropy for water,s_fg=%1.4f kJ/kg.K",s_fg);
