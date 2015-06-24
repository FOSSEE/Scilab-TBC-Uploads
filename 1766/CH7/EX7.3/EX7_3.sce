clc;funcprot(0);//Example 7.3
//Initilisation of Variables
Tw=96;....//Uniform temparature of plate in degrees celcius
Tv=100;......//Temparature of condence steam in degrees celcius
L=0.4;....//area of plate in m
Kl=0.68;.....//Thermal conductivity of plate in W/m K
Ml=2.82*10^-4;....//saturated liquid velocity in kg/m s
hfg=2255*10^3;....//latent heat of vapouraisation in kJ/kg
g=9.81;......//accelaration due to gravity in m/s^2
Pl=968;.....//density of saturated liquid in kg/m^3
hi=0.943*[(hfg*Kl^3*g*Pl^2)/(Ml*(Tv-Tw)*L)]^(0.25);.....//Average heat transfer coefficient of horizantal tube in W/m^2 K
m=(L^2*hi*(Tv-Tw))/hfg;......//Mass flow rate of vertical tube in kg/s
Re=(4*hi*L*(Tv-Tw))/(Ml*hfg);......//reynolds number
disp((Re),"It is laminar flow  because reynolds value is below 1800")
