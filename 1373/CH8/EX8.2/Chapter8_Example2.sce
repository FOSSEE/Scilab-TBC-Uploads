//Chapter-8, Example 8.2, Page 341
//=============================================================================
clc
clear

//INPUT DATA
L=0.3;//Length of the glass plate in m
Ta=27;//Temperature of air in degree C
Ts=77;//Surface temperature in degree C
v=4;//Velocity of air in m/s

//CALCULATIONS
Tf=(Ta+Ts)/2;//Film temperature in degree C
k=0.02815;//Thermal conductivity in W/m.K
v1=(18.41*10^-6);//Kinematic viscosity in m^2/s
Pr=0.7;//Prantl number
b=(3.07*10^-3);//Coefficient of thermal expansion in 1/K
Gr=(9.81*b*(Ts-Ta)*L^3)/v1^2;//Grashof number
Re=(v*L)/v1;//Reynolds number
Nu=(0.677*sqrt(Pr)*(0.952+Pr)^(-0.25)*Gr^0.25);//Nusselts number
h=(Nu*k)/L;//Heat transfer coefficient for natural convection in W/m^2.K
Nux=(0.664*sqrt(Re)*Pr^(1/3));//Nusselts number
hx=(Nux*k)/L;//Heat transfer coefficient for forced convection in W/m^2.K

//OUTPUT
mprintf('Heat transfer coefficient for natural convection is %3.1f W/m^2.K \nHeat transfer coefficient for forced convection is %3.2f W/m^2.K',h,hx)

//=================================END OF PROGRAM==============================
