clear;
clc;

//Example10.2[Peak Heat Flux in Nucleate Boiling]
D=0.01;//[m]
Tsat=100;//Saturation Temperature[degree Celcius]
sigma=0.0589;//[N/m]
//Properties of water at saturation temperature
rho_l=957.9;//[kg/m^3]
rho_v=0.6;//[kg/m^3]
h_fg=2257*10^3;//[J/kg]
mu_l=0.282*10^(-3);//[kg/m.s]
Pr_l=1.75;//Prandtl number
Cp_l=4217;//[J/kg.degree Celcius]
Csf=0.0130,n=1.0;
g=9.81;//[m/s^2]
//Solution:-
L_=(D/2)*((g*(rho_l-rho_v)/sigma)^(1/2));//dimensionless Parameter
//For this value of L_ we have 
C_cr=0.12;//Constant
q_max=C_cr*h_fg*((sigma*g*(rho_v^2)*(rho_l-rho_v))^(1/4));//[W/m^2]
disp("W/m^2",q_max,"The maximum or critical heat flux is")
Ts=(((q_max/(mu_l*h_fg*((g*(rho_l-rho_v)/sigma)^(1/2))))^(1/3))*(Csf*h_fg*Pr_l^n)/Cp_l)+Tsat;//[degree Celcius]
disp("degree Celcius",round(Ts),"The surface temperature is")