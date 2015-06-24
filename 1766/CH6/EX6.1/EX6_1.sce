clc;funcprot(0);//Example 6.1
//Initilisation of Variables
A=0.05;...//surface area of element in m^2
Tw=110;....//Uniform temparature in degrees celcius
Ml=0.282*10^-3;....//saturated liquid velocity in kg/m s
hfg=2257*10^3;....//latent heat of vapouraisation in J/kg
g=9.81;......//accelaration due to gravity in m/s^2
Pl=960.6;.....//density of saturated liquid in kg/m^3
Pv=0.6;....//density of saturated vapour in kg/m^3
row=0.0588;....//surface tension for liquid vapour interferance in N/m
Cpl=4200;...//specific heat of saturated liquid J/kg K
Csl=0.008;....//a constant based on heating surface and liquid 
Prl=1.74;....//Prandtl number of saturated liquid 
n=1;....//
Ts=100;...//
Q=A*Ml*hfg*[(g*(Pl-Pv))/row]^(1/2)*[(Cpl*(Tw-Ts))/(Csl*hfg*Prl^n)]^3;...//Rate of Heat transfer in W/m^2
Re=(Q)/hfg;...//Rate of heat evaporation in kg/s
disp(Re*3600,"Rate of heat evaporation in kg/hr")
