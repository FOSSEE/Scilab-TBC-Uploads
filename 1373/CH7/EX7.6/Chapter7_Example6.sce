//Chapter-7, Example 7.6, Page 289
//=============================================================================
clc
clear

//INPUT DATA
L=1;//Length of the palte in m
W=1;//Width of the plate in m
Ts=10;//Temperature of free strem air in degree C
v=80;//Velocity of free stream air in m/s

//CALCULATIONS
k=0.025;//Thermal conductivity of air at 10 degree C 
Pr=0.72;//prant number of air at 10 degree C
v1=(14.15*10^-6);//Kinematic viscosity of air at 10 degree C 
Re=(v*L)/v1;//Reynolds number
q=0.381*L*Re^(-1/5);//Thickness of the boundary layer at the trailing edge of the plate in m
Nu=(0.037*Re^(4/5)*Pr^(1/3));//Nusselts number
h=(Nu*k)/L;//Mean value of the heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Thickness of the boundary layer at the trailing edge of the plate is %3.4f m \nMean value of the heat transfer coefficient is %3.0f W/m^2.K',q,h)

//=================================END OF PROGRAM==============================
