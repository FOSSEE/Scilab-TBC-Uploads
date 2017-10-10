// Example 2_5
clc;clear;funcprot(0);
// Given values
T=20;// degree celsius
sigma_s=0.073; // the surface tension of water in N/m
phi=0; // the contact angle of water with glass in degree
rho=1000;// kg/m^3
g=9.81;// m/s^2
R=0.3*10^-3; // Radius of glass tube in m

//Calculation
h=((2*sigma_s)/(rho*g*R))*cos(phi);// the capillary rise of water in m
h=h*100;// m to cm
printf('The capillary rise of water in a tube h=%0.1f cm\n',h);
