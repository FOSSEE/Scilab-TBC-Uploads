//Chapter-7, Example 7.23, Page 320
//=============================================================================
clc
clear

//INPUT DATA
D=0.05;//Diamter of the tube in m
T=147;//Average temperature in degree C
v=0.8;//Flow vwlocity in m/s
Tw=200;//Wall temperature in degree C
L=2;//Length of the tube in m

//CALCULATIONS
p=812.1;//Density in kg/m^3 of oil at 147 degree C
Cp=2427;//Specific heat of oil at 147 degree C in J/kg.K
u=(6.94*10^-6);//Kinematic viscosity of oil at 147 degree C in m^2/s
k=0.133;//Thermal conductivity of oil at 147 degree C in W/m.K
Pr=103;//prantl number of oil at 147 degree C 
Re=(v*D)/u;//Reynolds number
Nu=(0.036*Re^0.8*Pr^(1/3)*(D/L)^0.055);//Nussults number
h=(Nu*k)/D;//Average heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Average heat transfer coefficient is %3.1f W/m^2.K',h)

//=================================END OF PROGRAM==============================
