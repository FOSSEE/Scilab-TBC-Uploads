//Chapter-7, Example 7.2, Page 275
//=============================================================================
clc
clear

//INPUT DATA
Ta=20;//Temperature of air in degree C
Tp=134;//Temperature of heated plate in degree C
v=3;//Velocity of flow in m/s
L=2;//Length of plate in m
W=1.5;//Width of plate in m
x=0.4;//Distance of plane from the plate in m
k=(15.06*10^-6);//Kinematic viscosity in m^2/s

//CALCULATIONS
Tf=(Ta+Tp)/2;//Film temperature in degree C
pw=0.998;//Density of air at 77 degree C
Cp=1009;//Specific heat of air at 77 degree C
kw=(20.76*10^-6);//Kinematic viscosity of air at 77 degree C
k=0.03;//Thermal conductivity of air at 77 degree C
Pr=0.697;//prantl number of air at 77 degree C
Re=(v*x)/kw;//Reynolds number
Nu=(0.332*Re^0.5*Pr^(1/3));//Nusselts number
h=(Nu*k)/x;//Heat transfer coefficient in W/m^2.K
h1=(h*2);//Average value of heat transfer coefficient in W/m^2.K
Q=h1*x*W*(Tp-Ta);//Heat flow in W
Q1=(2*Q);//Heat flow from both sides of the plate in W

//OUTPUT
mprintf('Heat flow from both sides of the plate is %3.0f W',Q1)

//=================================END OF PROGRAM==============================
