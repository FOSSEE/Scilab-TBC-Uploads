clear;
clc;

//Example10.1[Nucleate Boiling of Water in a Pan]
Ts=108;//Temp of surface of bottom of pan[degree Celcius]
Tsat=100;//Saturation temp of water[degree Celcius]
D=0.3;//Diameter[m]
//Properties of water at the saturation temp
rho_l=957.9;//Density of liquid[kg/m^3]
rho_v=0.6;//Density of vapour[kg/m^3]
Pr_l=1.75;//Prandtl no of liquid
mu_l=0.282*10^(-3);//Viscosity of liquid[kg/m.s]
Cp_l=4217;//Specific Heat of liquid[J/kg.degree Celcius]
h_fg=2257*10^3;//[J/kg]
sigma=0.0589;//[N/m]
g=9.81;//Acc due to gravity[m/s^2]
Csf=0.0130,n=1.0;
//Solution(a):-
q_nuc=mu_l*h_fg*((g*(rho_l-rho_v)/sigma)^(1/2))*((Cp_l*(Ts-Tsat)/(Csf*h_fg*(Pr_l^n)))^3);//[W/m^2]
A=%pi*(D^2)/4;//Surface Area of bottom of the pan[m^2]
Q_boiling=A*q_nuc;//[W]
disp("W",Q_boiling,"(a) The rate of heat transfer during nucleate boiling becomes ")
//Solution(b):-
m=Q_boiling/h_fg;//[kg/s]
disp("kg/s",m,"The rate of Evaporation of water is")
