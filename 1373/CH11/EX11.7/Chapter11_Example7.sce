//Chapter-11, Example 11.7, Page 491
//=============================================================================
clc
clear

//INPUT DATA
D=0.05;//Diameter of the tube in m
L=2;//Length of the tube in m
Ts=84;//Outer surface temperature in degree C
Tsat=100;//Saturation temperature of water in degree C
Tf=(Tsat+Ts)/2;//Film temperature in degree C
p1=963.4;//Density of liquid in kg/m^3
u=(306*10^-6);//Dynamic viscosity in N.s/m^2
hfg=2257;//Enthalpy in kJ/kg
pv=0.596;//Density of vapour in kg/m^3
k1=0.677;//Thermal conductivity in W/m.K

//CALCULATIONS
hL=(1.13*((9.81*p1*(p1-pv)*k1^3*hfg*1000)/(u*16*L))^0.25);//Heat transfer coefficient in W/m^2.K
Ref=((4*hL*L*2)/(hfg*1000*u));//Reynolds nmber
Q=(hL*3.14*D*L*10);//Heat transfer rate in W
m=(Q/(hfg*1000))*3600;//Condensate mass flow rate in kg/h

//OUTPUT
mprintf('Heat transfer rate is %3.0f W \n Condensate mass flow rate is %3.1f kg/h',Q,m)

//=================================END OF PROGRAM==============================
