// Example 3_4
clc;clear;funcprot(0);
// Constants used
g=9.81;//The acceleration due to gravity in m/s^2

// Given values
h=1400;//m
h_1=0.1;// m
h_2=0.2;// m
h_3=0.35;// respective heights in m
P_atm=85.6*1000; // The atmospheric pressure in Pa;
rho_w=1000;// kg/m^3
rho_o=850;// kg/m^3
rho_hg=13600; // The density of water,oil and mercury in kg/m^3

//Calculation
P_1r=(P_atm+((rho_hg*g*h_3)-(rho_w*g*h_1)-(rho_o*g*h_2)));// Modified equation
P_1=P_1r/1000;// Pa to kPa
printf('The air pressure in the tank P_1~=%0.0f kPa\n',P_1);
rho_hg~=1030;// kg/m^3
H_3=(P_atm-P_1r-(rho_w*g*h_1)-(rho_o*g*h_2))/(-rho_hg*g);
printf('The height of the fluid column, h_3=%0.2f m\n',H_3);
