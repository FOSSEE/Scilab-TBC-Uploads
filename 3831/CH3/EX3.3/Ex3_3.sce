// Example 3_3
clc;funcprot(0);
// Given data
u=82.77;// The specific internal energy in kJ/kg
v=0.0009928;// The specific volume of liquid water in m^3/kg
T=20.0;// °C
P=20.0;// MPa

// Solution
h=u+(P*10^3*v);// The specific enthalpy of the water in kJ/kg
printf('\n The specific enthalpy of the water,h=%3.0f kJ/kg',h);
