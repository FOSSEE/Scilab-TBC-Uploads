// Example 3_3
clc;clear;funcprot(0);
// Constants used
g=9.81;//The acceleration due to gravity in m/s^2

// Given values
h=1400;//m
h_1=0.1;//m
h_2=0.2;//m
h_3=0.35;// respective heights in m
P_atm=85.6; // The atmosphereic pressure in kPa;
rho_w=1000;// kg/m^3
rho_o=850;// kg/m^3
rho_m=13600; // The density of water, mercury and oil in kg/m^3

// Calculation
P_1=P_atm+((rho_m*g*h_3)-(rho_w*g*h_1)-(rho_o*g*h_2))/1000;
printf('The air pressure in the tank P_1=%0.0fkPa\n',P_1);
