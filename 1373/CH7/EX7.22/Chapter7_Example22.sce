//Chapter-7, Example 7.22, Page 320
//=============================================================================
clc
clear

//INPUT DATA
D=0.022;//Diamter of the tube in m
v=2;//Average velocity in m/s
Tw=95;//Temperature of tube wall in degree C
T=[15,60];//Initial and final temperature of water in degree C

//CALCULATIONS
Tm=(T(1)+T(2))/2;//Bulk mean temperature in degree C
p=990;//Density of air at 37.5 degree C in kg/m^3
Cp=4160;//Specific heat of air at 37.5 degree C in J/kg.K
u=(0.69*10^-3);//Dynamic viscosity of air at 37.5 degree C in Ns/m^2
k=0.63;//Thermal conductivity of air at 37.5 degree C in W/m.K
us=(0.3*10^-3);//Dynamic viscosity of air at 37.5 degree C in Ns/m^2
Re=(p*v*D)/u;//Reynolds number
Pr=(u*Cp)/k;//Prantl number
Nu=(0.027*Re^(4/5)*Pr^(1/3)*(u/us)^0.14);//Nusselts number
h=(Nu*k)/D;//Heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Heat transfer coefficient is %3.0f W/m^2.K',h)

//=================================END OF PROGRAM==============================
