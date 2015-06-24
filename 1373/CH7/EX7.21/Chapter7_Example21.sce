//Chapter-7, Example 7.21, Page 319
//=============================================================================
clc
clear

//INPUT DATA
Ti=50;//Temperature of water at inlet in degree C
D=0.015;//Diameter of tube in m
L=3;//Length of the tube in m
v=1;//Velocity of flow in m/s
Tb=90;//Temperature of tube wall in degree C
Tf=64;//Exit temperature of water in degree C

//CALCULATIONS
Tm=(Ti+Tf)/2;//Bulk mean temperature in degree C
p=990;//Density of air at 57 degree C in kg/m^3
Cp=4184;//Specific heat of air at 57 degree C in J/kg.K
u=(0.517*10^-6);//Kinematic viscosity of air at 57 degree C in m^2/s
k=0.65;//Thermal conductivity of air at 57 degree C in W/m.K
Pr=3.15;//prantl number of air at 57 degree C 
Re=(v*D)/u;//Reynolds number
Nu=(0.023*Re^(4/5)*Pr^0.4);//Nusselts number
h=(Nu*k)/D;//Heat transfer coefficient in W/m^2.K
Q=(h*3.14*D*L*(Tb-Tm))/1000;//Rate of heat transfered in kW

//OUTPUT
mprintf('Heat transfer coefficient is %3.0f W/m^2.K \nRate of heat transfered is %3.2f kW',h,Q)

//=================================END OF PROGRAM==============================
