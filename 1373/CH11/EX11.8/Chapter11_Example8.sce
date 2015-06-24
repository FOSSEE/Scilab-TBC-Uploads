//Chapter-11, Example 11.8, Page 492
//=============================================================================
clc
clear

//INPUT DATA
h=2.8;//Height of the plate in m
T=54;//Temperature of the plate in degree C
Tsat=100;//Saturation temperature of water in degree C
Tf=(Tsat+T)/2;//Film temperature in degree C
p1=937.7;//Density of liquid in kg/m^3
u=(365*10^-6);//Dynamic viscosity in N.s/m^2
hfg=2257;//Enthalpy in kJ/kg
pv=0.596;//Density of vapour in kg/m^3
k1=0.668;//Thermal conductivity in W/m.K

//CALCULATIONS
Re=(0.00296*((p1*9.81*(p1-pv)*k1^3*(Tsat-T)^3*h^3)/(u^5*(hfg*1000)^3))^(5/9));//Reynolds number
hL=(0.0077*((9.81*p1*(p1-pv)*k1^3)/u^2)^(1/3)*Re^0.4);//Heat transfer coefficient in W/m^2.K
Q=(hL*h*(Tsat-T))/1000;//Heat transfer rate per unit width in kW/m

//OUTPUT
mprintf('Heat transfer rate per unit width is %3.2f kW/m',Q)

//=================================END OF PROGRAM==============================
