// Example 8_2
clc;funcprot(0);
// Given data
P_1=10;// kPa
P_2=4;// MPa
T_3=400;// °C
h_2=192;// kJ/kg
h_3=3214;// kJ/kg
s_3=6.7698;// kJ/kg.K

// Calculation
s_f4=0.6491;// kJ/kg.K
s_fg4=7.5019;// kJ/kg.K
s_4=s_3;// kJ/kg.K
x_4=(s_4-s_f4)/s_fg4;// The quality of steam at state 4
q_B=h_3-h_2;// The heat input in kJ/kg
h_f4=192;// kJ/kg
h_fg4=2393;// kJ/kg
h_4=h_f4+(x_4*h_fg4);// kJ/kg
w_T=h_3-h_4;// kJ/kg
n_2=w_T/q_B;// The cycle efficiency
// From example 8.1
n_1=0.3232;// The power cycle efficiency at P_2=2 MPa
Pi=((n_2-n_1)/n_1)*100;// The percentage increase in efficiency
printf(" The percentage increase in efficiency is %1.2f percentage.",Pi);
