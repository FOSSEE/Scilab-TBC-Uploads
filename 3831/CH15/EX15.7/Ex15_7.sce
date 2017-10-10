// Example 15_7
clc;funcprot(0);
// Given data
m=0.160;// kg of liquid water
T=25.0;// °C
p=0.100;// MPa

// Calculation
h_f_H2O=285.838;// MJ/kg mole
q_f_H2O=285.838;// MJ/kg mole
q_r=q_f_H2O;// MJ/kg mole
M=18.016;// kg/kgmole
Q_r=m*(-q_r/M);// MJ
printf("\nThe total heat transfer required,Q_r=%1.2f MJ",Q_r);
