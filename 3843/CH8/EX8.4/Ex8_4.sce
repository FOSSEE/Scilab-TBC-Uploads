// Example 8_4
clc;funcprot(0);
// Given data
P_1=4;// kPa
P_2=2;// MPa
T_3=400;// °C
h_2=192;// kJ/kg
h_3=3248;// kJ/kg
s_3=7.1279;// kJ/kg.K

// Calculation
s_f4=0.4225;// kJ/kg.K
s_fg4=8.0529;// kJ/kg.K
s_4=s_3;// kJ/kg.K
x_4=(s_4-s_f4)/s_fg4;// The quality of steam at state 4
q_B=h_3-h_2;// The heat input in kJ/kg
h_f4=121;// kJ/kg
h_fg4=2433;// kJ/kg
h_4=h_f4+(x_4*h_fg4);// kJ/kg
w_T=h_3-h_4;// kJ/kg
n_2=w_T/q_B;// The cycle efficiency
// From example 8.1
n_1=0.3232;// The power cycle efficiency at P_1=10 MPa
Pi=((n_2-n_1)/n_1)*100;// The percentage increase in efficiency
printf("\nThe percentage increase in efficiency is %1.1f percentage.",Pi);
