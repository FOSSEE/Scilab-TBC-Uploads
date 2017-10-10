// Example 4_5
clc;funcprot(0);
// Given data
Q=3500;// kJ
V=2;// m^3
v=0.5342;// m^3/kg
h_1=2860;// kJ

// Calculation
m=V/v;// kg
h_2=(Q/m)+h_1;// kJ/kg
// From the steam tables this interpolates to
T_2=600+((92.6/224)*(100));// °C
printf("\nThe final temperature,T_2=%3.0f°C",T_2);
