// Example 6_6
clc;funcprot(0);
// Given data
p_1=2.00;// MPa
T_1=800;// °C
p_2=1.00;// MPa
Wbymdot=2000;// kJ/kg

// Calculation
h_1=4150.4;// kJ/kg
h_f2=29.30;// kJ/kg
h_fg2=2484.9;// kJ/kg
h_g2=2514.2;// kJ/kg
h_2=h_1-Wbymdot;// kJ/kg
x_2=(h_2-h_f2)/h_fg2;// The quality of steam
x_2=x_2*100;// % vapor at the turbine’s outlet
printf("\nThe quality of the steam at the outlet of an insulated steam turbine,x_2=%2.1f percentage.",x_2);
