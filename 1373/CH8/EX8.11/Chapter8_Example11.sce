//Chapter-8, Example 8.11, Page 352
//=============================================================================
clc
clear

//INPUT DATA
D=0.01;//Diameter of spherical steel ball in m
Ts=260;//Surface temperature in degree C
Ta=20;//Temperature of air in degree C

//CALCULATIONS
Tf=(Ts+Ta)/2;//Film temperature in degree C
k=0.0349;//Thermal conductivity in W/m.K
v1=(27.8*10^-6);//Kinematic viscosity in m^2/s
b=(1/413);//Coefficient of thermal expansion in 1/K
Pr=0.684;//Prantl number
Ra=((9.81*b*D^3*(Ts-20)*Pr)/(v1^2));//Rayleigh number
Nu=(2+(0.43*Ra^0.25));//Nusuults number
h=(k*Nu)/D;//Heat transfer coefficient in W/m^2.K
Q=(h*3.14*D^2*(Ts-Ta));//Rate of heat loss in W

//OUTPUT
mprintf('Rate of convective heat loss is %3.2f W',Q)

//=================================END OF PROGRAM==============================
