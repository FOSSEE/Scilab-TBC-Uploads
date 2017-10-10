//Example 3_10
clc;clear;funcprot(0);
//Given values
h_sub=0.1;// m
rho_w=1000;// Density of water in kg/m^3
R=0.005;// m

// Calculation
V_sub=%pi*R^2*h_sub;// m^3
m=rho_w*V_sub;// kg
printf('The mass of lead,m=%0.5f kg\n',m);
