//Chapter-12, Example 12.1, Page 503
//=============================================================================
clc
clear

//INPUT
T=80;//Bulk Temperature of water in degrees C
Di=0.0254;//Inner diameter of steel pipe in m
Do=0.0288;//Outer diameter of steel pipe in m
k=50;//Thermal conductivity of steel in W/m.K
ho=30800;//Average convection coefficient in W/m^2.K
v=0.50;//Velocity of water in m/s

//INPUT DATA FROM HEAT AND MASS TRANSFER DATA BOOK FOR WATER AT BULK TEMPERATURE OF 80 degree C
d=974;//Density in kg/m^3
v1=0.000000364;//Kinematic viscosity in m^2/s
k1=0.6687;//Thermal conductivity in W/m.K
Pr=2.2;//Prantl Number

//CALCULATIONS
Re=(v*Di)/v1;//Reynold's number
Nu=(0.023*Re^0.8*Pr^0.4);//Nusselts number
hi=Nu*(k1/Di);//Heat transfer coefficient in W/m^2.K
ri=(Di/2);//Inner radius of steel pipe in m
ro=(Do/2);//Outer radius of steel pipe in m
U=(1/((1/ho)+((ro/k)*log(ro/ri))+(ro/(ri*hi))));//Overall heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Overall heat transfer coefficient is %3.1f W/m^2.K',U)

//=================================END OF PROGRAM==============================

