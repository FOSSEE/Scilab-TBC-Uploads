clc;funcprot(0);//Example 6.2
//Initilisation of Variables
Tw=106;......//Uniform temparature in degrees celcius
Ml=0.282*10^-3;....//saturated liquid velocity in kg/m s
hfg=2257*10^3;....//latent heat of vapouraisation in J/kg
g=9.81;......//accelaration due to gravity in m/s^2
Pl=960.6;.....//density of saturated liquid in kg/m^3
Pv=0.6;....//density of saturated vapour in kg/m^3
row=0.0588;....//surface tension for liquid vapour interferance in N/m
Cpl=4200;...//specific heat of saturated liquid J/kg K
Csl=0.006;....//a constant based on heating surface and liquid 
Prl=1.74;....//Prandtl number of saturated liquid 
n=1;....//
Ts=100;...//
q=Ml*hfg*([(g*(Pl-Pv))/row]^(1/2))*[(Cpl*(Tw-Ts))/(Csl*hfg*Prl^n)]^3;...//Heat flux for nucliate boiling in W/m^2
Qcritical=0.18*Pv^0.5*hfg*[g*row*(Pl-Pv)]^0.25;....//Critical Heat flux for nucliate boiling in W/m^2
Qwb=q*[row/Csl]^3;...//Heat flux for water brass in W/m^2
disp(q,"(i)Heat flux for nucliate boiling in W/m^2")
disp(Qcritical,"  Critical Heat flux for nucliate boiling in W/m^2")
disp(Qwb,"(ii)Heat flux for water brass system in W/m^2" )
