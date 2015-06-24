clear;
clc;

//Example10.3[Film Boiling of Water on a Heating Element]
//Given:-
D=0.005;//[m]
e=0.05;//Emissivity
Ts=350;//Surface temperature[degree Celcius]
Tsat=100;//[degree Celcius]
Tf=(Ts+Tsat)/2;//[degree Celcius]
g=9.81;//[m/s^2]
//Properties of water at Tsat
rho_l=957.9;//[kg/m^3]
h_fg=2257*10^3;//[J/kg]
//Properties of vapor at film temp
rho_v=0.444;//[kg/m^3]
Cp_v=1951;//[J/kg.degree Celcius]
mu_v=1.75*10^(-5);//[kg/m.s]
k_v=0.0388;//[W/m.degree Celcius]
//Solution:-
q_film=0.62*(((g*(k_v^3)*rho_v*(rho_l-rho_v)*(h_fg+(0.4*Cp_v*(Ts-Tsat))))/(mu_v*D*(Ts-Tsat)))^(1/4))*(Ts-Tsat);//[W/m^2]
disp("W/m^2)",q_film,"The film boiling heat flux is")
q_rad=e*(5.67*10^(-8))*(((Ts+273)^4)-((Tsat+273)^4));//[W/m^2]
disp("W/m^2",q_rad,"The radiation heat flux is")
q_total=q_film+(3/4)*q_rad;//[W/m^2]
disp("W/m^2",q_total,"The total heat flux is")
Q_total=(%pi*D*1)*q_total;//[W]
disp("W",Q_total,"The rate of heat transfer from the heating element to the water is")
