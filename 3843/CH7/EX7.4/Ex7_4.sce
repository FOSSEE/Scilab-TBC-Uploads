// Example 7_4
clc;funcprot(0);
// Given data
x=0.85;// The quality of steam
P=5;// kPa
T_0=298;// K

// Calculation
// From steam tables
h_1=2197.2;// kJ/kg
h_2=136.5;// kJ/kg
s_1=7.2136;// kJ/kg.K
s_2=0.4717;// kJ/kg.K
dX=(h_1-h_2)-(T_0*(s_1-s_2));// The amount of useful work wasted in the condenser in kJ/kg
printf("\nThe amount of useful work wasted in the condenser,X_2-X_1=%2.1f kJ/kg",dX);
