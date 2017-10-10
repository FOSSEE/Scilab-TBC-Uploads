// Example 8_1
clc;funcprot(0);
// Given data
P_1=10;// kPa
P_2=2000;// kPa
T_3=400;// °C
h_f=191.8;// kJ/kg
h_1=h_f;// kJ/kg
h_3=3248;// kJ/kg
s_3=7.1279;// kJ/kg.K

// Calculation
v_1=0.001;// m^3/kg
w_P=v_1*(P_2-P_1);// The pump work in kJ/kg
h_2=h_1+w_P;// kJ/kg
q_B=h_3-h_2;// The heat input in kJ/kg
s_4=s_3;// kJ/kg.K
x_4=0.8636;// The quality of steam at state 4
h_f4=h_f;// kJ/kg
h_fg4=2393;// kJ/kg
h_4=h_f4+(x_4*h_fg4);// kJ/kg
w_T=h_3-h_4;// kJ/kg
n=(w_T-w_P)/q_B;// The cycle efficiency
printf("\nThe maximum possible efficiency from the power cycle,n=%0.4f or %2.2f percentage.",n,n*100);
