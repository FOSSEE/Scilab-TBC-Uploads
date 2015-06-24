//Chapter-8, Example 8.1, Page 340
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
q=L*((3.93*(1/sqrt(Pr))*(0.952+Pr)^0.25*Gr^(-0.25)));//Boundary layer thickness at the trailing edge of the plate in free convection in m
Re=(v*L)/v1;//Reynolds number
q1=(5*L)/sqrt(Re);//Boundary layer thickness at the trailing edge of the plate in forced convection in m

//OUTPUT
mprintf('Boundary layer thickness at the trailing edge of the plate in free convection is % 3.4f m \nBoundary layer thickness at the trailing edge of the plate in forced convection is %3.4f m',q,q1) 

//=================================END OF PROGRAM==============================
