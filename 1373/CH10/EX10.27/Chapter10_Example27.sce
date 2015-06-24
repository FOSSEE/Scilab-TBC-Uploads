//Chapter-10, Example 10.27, Page 452
//=============================================================================
clc
clear

//INPUT DATA
D=0.2;//Diameter of pipe in m
Ta=30+273;//Temperature of air in K
Ts=200+273;//Temperature of surface in K
e=0.8;//Emissivity of the pipe

//CALCULATIONS
Q=(e*5.67*10^-8*3.14*D*(Ts^4-Ta^4));//Heat lost by thermal radiation in W/m
T=(Ta+Ts)/2;//Film temperature in degree C
k=0.03306;//Thermal conductivity in W/m.K
v1=(24.93*10^-6);//Kinematic viscosity in m^2/s
b=(1/388);//Coefficient of thermal expansion in 1/K
Pr=0.687;//Prantl number
Ra=((9.81*b*D^3*(Ts-Ta)*Pr)/(v1^2));//Rayleigh number
Nu=(0.53*(Ra)^0.25);//Nussults number
h=(k*Nu)/D;//Heat transfer coefficient in W/m^2.K
Q1=(h*3.14*D*(Ts-Ta));//Heat lost by convection in W/m
Q2=(Q+Q1);//Total heat lost per meter length in W/m

//OUTPUT
mprintf('Heat lost by thermal radiation is %3.0f W/m \nHeat lost by convection is %3.1f W/m',Q,Q1)

//=================================END OF PROGRAM==============================
