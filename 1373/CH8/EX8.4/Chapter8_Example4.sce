//Chapter-8, Example 8.4, Page 344
//=============================================================================
clc
clear

//INPUT DATA
W=0.5;//Width of the radiator in m
L=1;//Height of the radiator in m
Ts=84;//Surface temperature in degree C
Ta=20;//Room temperature in degree C

//CALCULATIONS
Tf=(Ts+Ta)/2;//Film temperature in degree C
k=0.02815;//Thermal conductivity in W/m.K
v1=(18.41*10^-6);//Kinematic viscosity in m^2/s
Pr=0.7;//Prantl number
b=0.003077;//Coefficient of thermal expansion in 1/K
Ra=((9.81*b*L^3*(Ts-Ta)*Pr)/(v1^2));//Rayleigh number
Nu=(0.825+((0.387*Ra^(1/6))/(1+(0.492/Pr)^(9/16))^(8/27)))^2;//Nussults number
h=(Nu*k)/L;//Heat transfer coefficient in W/m^2.K
Q=(h*W*L*(Ts-Ta));//Convective heat loss in W

//OUTPUT
mprintf('Convective heat loss from the radiator is %3.2f W',Q)

//=================================END OF PROGRAM==============================
