//Chapter-8, Example 8.3, Page 343
//=============================================================================
clc
clear

//INPUT DATA
L=0.609;//Height of the metal plate in m
Ts=161;//Temperature of the wall in degree C
Ta=93;//Temperature of air in degree C

//CALCULATIONS
Tf=(Ts+Ta)/2;//Film temperature in degree C
k=0.0338;//Thermal conductivity in W/m.K
v1=(26.4*10^-6);//Kinematic viscosity in m^2/s
Pr=0.69;//Prantl number
b=0.0025;//Coefficient of thermal expansion in 1/K
a=(38.3*10^-6);//Thermal diffusivity in m^2/s
Ra=((9.81*b*L^3*(Ts-Ta))/(v1*a));//Rayleigh number
Nu=(0.68+((0.67*Ra^0.25)/(1+(0.492/Pr)^(9/16))^(4/9)));//Nussults number
h=(Nu*k)/L;//Heat transfer coefficient in W/m^2.K
Q=(h*L*(Ts-Ta));//Rate of heat transfer in W

//OUTPUT
mprintf('Heat transfer coefficient is %3.3f W/m^2.K \nRate of heat transfer is %3.2f W',h,Q)

//=================================END OF PROGRAM==============================
