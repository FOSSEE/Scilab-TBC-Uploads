clear;
clc;

//Example10.4[Condensation of steam on a Vertical Plate]
//Given:-
Tsat=100,Ts=80;//[degree Celcius]
Tf=(Ts+Tsat)/2;//[degree Celcius]
L=2,w=3;//Dimensions of Plate[m]
g=9.81;//[m/s^2]
//Properties of water at Tsat
h_fg=2257*10^3;//[J/kg]
rho_v=0.60;//[kg/m^3]
//Properties of liquid water at Tf
rho_l=965.3;//[kg/m^3]
mu_l=0.315*10^(-3);//[kg/m.s
Cp_l=4206;//[J/kg.degree Celcius]
k_l=0.675;//[W/m.degree Celcius]
nu_l=0.326*10^(-6);//[m^2/s]
//Solution (a)
h_fg_m=h_fg+0.68*Cp_l*(Tsat-Ts);//[J/kg]
disp("J/kg",h_fg_m,"The modified latent heat of vapourization is")
Re=((4.81+((3.70*L*k_l*(Tsat-Ts)*((g/nu_l^2)^(1/3)))/(mu_l*h_fg_m)))^(0.820));
disp(ceil(Re),"For wavy laminar flow Reynolds number is")
h=(Re*k_l*((g/nu_l^2)^(1/3)))/((1.08*(Re^(1.22)))-5.2);//[W/m^2.degree Celcius]
disp("W/m^2.degree Celcius",h,"The conensation heat transfer coefficient is")
As=w*L;//[m^2]
Q=h*As*(Tsat-Ts);//[W]
disp("W",Q,"The rate of heat transfer during condensation process is")
//Solution (b)
m=Q/h_fg_m;//[kg/s]
disp("kg/s",m,"The rate of condensation of steam is")
