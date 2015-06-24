//Exa 9.1
clc;
clear;
close;
format('v',9)
//given data
h_fg=2256*10^3;// in J/kg
rho=970;// in kg/m^3
rho_v=0.596;// in kg/m^3
k=0.66;// in W/mK
miu=3.7*10^-4;// in kg/m-s
T_sat=100;// in degree C
T_s=40;// in degree C
L=1.5;// in m
d=0.09;// in m
g=9.81;
// heat transfer coefficient
//h_bar = 1.13*[ rho*g*(rho-rho_v)*h_fg*k^3/(miu*L*(T_sat-T_s))]^(1/4);// in W/m^2k
h_bar= 1.13*[     rho*g*(rho-rho_v)*h_fg*k^3/(  miu*L*(T_sat-T_s)          )         ]^(1/4);
// heat transfer rate
q=h_bar*%pi*d*L*(T_sat-T_s);// in watt
disp(q*10^-3,"Heat transfer rate in kW")
//rate of condensation
m=q/h_fg;// in kg/s
disp(m,"Rate of condenstion in kg/s")