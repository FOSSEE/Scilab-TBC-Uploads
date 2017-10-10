//Example 14-5
clc;clear;
// Properties
rho_a=1.20;// kg/m^3
rho_w=998;// kg/m^3
n=1750;
alpha_1=0;
alpha_2=40;
r_1=0.04;// m
r_2=0.08;// m
b_1=0.052;// m
b_2=0.023;// m
v=0.13;// m^3/s
g=9.81// m/s^2

// Calculation
V_1n=(v/(2*%pi*r_1*b_1));
V_1t=0;//since alpha_1=0
V_2n=(v/(2*%pi*r_2*b_2));
V_2t=V_2n*tand(40);
omega=(2*%pi*n)/60;
H=((omega/g)*((r_2*V_2t)-(r_1*V_1t)));
H_wc=H*(rho_a/rho_w)*1000;// mm
bhp=(rho_a*g*v*H);
printf('The required brake horsepower,bhp=%0.1f W\n',bhp);
