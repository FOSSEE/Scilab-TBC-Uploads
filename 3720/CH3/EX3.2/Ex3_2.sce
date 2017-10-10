//Example 3_2
clc;clear;funcprot(0);
//Given values
SG=0.85;// Specific gravity of manometer fluid
h=0.55;// The manometer column height in m
P_atm=96;// Local atmospheric pressure in kPa
rho_w=1000;// The density of water in kg/m^3
g=9.81;// The acceleration due to gravity in m/s^2

//Calculation 
rho=SG*rho_w;// kg/m^3
P=P_atm+(rho*g*h)/1000; // The pressure of the fluid in kPa
printf('The absolute pressure with in the tank,P=%0.1f kPa\n',P);
