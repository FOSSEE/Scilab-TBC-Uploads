// Example 6_3
clc;funcprot(0);
// Given data
p_1=2.00;// MPa
p_2=0.100;// MPa
T_2=150;// °C
h_1=2776.4;// kJ/kg
h_2=2776.4;// kJ/kg

// Calculation
h_f1=908.8;// kJ/kg
h_fg1=1890.7;// kJ/kg
h_g1=2799.5;// kJ/kg
x_1=(h_1-h_f1)/h_fg1;// The quality of steam
x_1=x_1*100;// The quality of steam in %
T_1=212.4;// °C
mu_J=(T_1-T_2)/(p_1-p_2);// °C/MPa
printf("\nThe quality of the wet steam in the pipe,x=%2.1f percentage \nJoule-Thomson coefficient,mu_J=%2.1f°C/MPa",x_1,mu_J);
