//Example 8_10
clc;clear;funcprot(0);
// Given values
rho_m=788.4;// kg/m^3
mu=5.857*10^-4;// The dynamic viscosity of methanol in kg/m.s
d=0.03;// Diameter of orifice in m
D=0.04;// Diameter of pipe in m
rho_Hg=13600;// kg/m^3
g=9.81;// m/s^2
h=0.11;// m
//Assumptions
C_d=0.61;

//Calculation
beta=(d/D);// The diameter ratio
A_0=(%pi*d^2)/4;// The throat area of the orifice in m^2
gradP=(rho_Hg-rho_m)*g*h;
v=A_0*C_d*sqrt((2*((rho_Hg/rho_m)-1)*g*h)/(1-beta^4));// m^3/s
printf('The flow rate of methanol through the pipe,v=%0.2e  m^3/s\n',v);
A_1=(%pi*D^2)/4;// m^2
V=v/A_1;// m/s
printf('The average flow velocity,V_1=%0.2f m/s\n',V)
