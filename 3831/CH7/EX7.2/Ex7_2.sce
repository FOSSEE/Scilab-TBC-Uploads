// Example 7_2
clc;funcprot(0);
// Given data
T_L=10;// °C
W_E=5.00;// MW
W_P=100;// kW
Q_L=8.00;// MW

// Solution
// (a)
Q_H=abs(-Q_L)+(W_E-abs(-W_P/10^3));// MW
n_T=((W_E-abs(-W_P/10^3))/Q_H);// The actual thermal efficiency of the power plant
printf('\nThe actual thermal efficiency of the power plant,n_T=%2.1f percentage',n_T*100);
// (b)
T_H=(T_L+273.15)/(1-n_T);// K
T_H=T_H-273.15;// °C
printf('\nThe equivalent heat source temperature,T_H=%3.0f°C',T_H);
