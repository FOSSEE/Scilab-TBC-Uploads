// Example 10_4
clc;funcprot(0);
// Given data
P_1=2;// kPa
T_1=17.5+273;// K
P_2=1;// kPa
h_fg=2480;// kJ/kg
R=0.462;// kJ/kg.K

// Calculation
T_2=1/((1/T_1)-((R/h_fg)*log(P_2/P_1)));// K
printf("\nT_2=%3.0f K or %1.0f°C",T_2,T_2-273);
