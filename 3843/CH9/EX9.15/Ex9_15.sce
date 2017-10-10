// Example 9_15
clc;funcprot(0);
// Given data
T_2=-10+273;// K
T_4=30+273;// K
r=10;// The compression ratio
c_p=1.00// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
T_3=T_2*(r)^((k-1)/k);// K
T_1=T_4*(1/r)^((k-1)/k);// K
T_1C=T_1-273;// The minimum cycle temperature in °C
q_in=c_p*(T_2-T_1);// kJ/kg
w_comp=c_p*(T_3-T_2);// kJ/kg
w_turb=c_p*(T_4-T_1);// kJ/kg
COP=q_in/(w_comp-w_turb);// The coefficient of performance
printf("\nThe minimum cycle temperature,T_1=%3.0f°C \nThe coefficient of performance,COP=%1.2f",T_1C,COP);
