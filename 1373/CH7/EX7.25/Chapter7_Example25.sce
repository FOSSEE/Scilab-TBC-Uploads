//Chapter-7, Example 7.25, Page 322
//=============================================================================
clc
clear

//INPUT DATA
Di=0.03125;//I.D of the annulus in m
Do=0.05;//O.D of the annulus in m
Ts=50;//Outer surface temperature in degree C
Ti=16;//Temeperature at which air enters in degree C
Tf=32;//Temperature at which air exits in degree C
v=30;//Flow rate in m/s

//CALCULATIONS
Tb=(Ti+Tf)/2;//Mean bulk temperature of air in degree C
p=1.614;//Density in kg/m^3 of air at 24 degree C
Cp=1007;//Specific heat of air at 24 degree C in J/kg.K
u=(15.9*10^-6);//Kinematic viscosity of air at 24 degree C in m^2/s
k=0.0263;//Thermal conductivity of air at 24 degree C in W/m.K
Pr=0.707;//prantl number of air at 24 degree C
Dh=(4*(3.14/4)*(Do^2-Di^2))/(3.14*(Do+Di));//Hydraulic diameter in m
Re=(v*Dh)/u;//Reynolds number
Nu=(0.023*Re^0.8*Pr^0.4);//Nussults number
h=(Nu*k)/Dh;//Heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Heat transfer coefficient is %3.1f W/m^2.K',h)

//=================================END OF PROGRAM==============================
