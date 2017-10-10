// Example 6_7
clc;funcprot(0);
// Given data
T_in=20.0;// °C
p_in=50.0;// MPa
c=4.126;// kN.m/kg.K

// Calculation
v_f=0.001002;// m^3/kg
v=0.0009804;// m^3/kg
T_finalfilled=T_in+((v*(p_in*10^3))/c);// °C
printf("\nThe final temperature of the water in the tank,T_final filled=%2.1f°C",T_finalfilled);
