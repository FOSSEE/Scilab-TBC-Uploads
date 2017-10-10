// Example 4_18
clc;funcprot(0);
// Given data
P_2=4000;// kPa
T_2=600;// °C
P_1=20;// kPa
v=0.001;// m^3/kg
m=1;// kg
h_1=251.4;// kJ/kg

// Calculation
w_P=(P_2-P_1)*v;// kJ/kg
h_2=w_P+h_1;// kJ/kg
// From steam tables
h_3=3674;// kJ/kg
h_4=2610;// kJ/kg
q_B=h_3-h_2;// kJ/kg
w_T=h_3-h_4;// The work output in kJ/kg
n=(w_T-w_P)/q_B;// The thermal efficiency
printf("\nThe thermal efficiency,n=%0.3f or %2.1f percentage",n,n*100);
