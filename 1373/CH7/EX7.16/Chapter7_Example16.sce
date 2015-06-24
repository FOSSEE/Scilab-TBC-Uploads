//Chapter-7, Example 7.16, Page 311
//=============================================================================
clc
clear

//INPUT DATA
Di=0.025;//I.D of the tube in m
Do=0.04;//O.D of the tube in m
m=5;//Mass flow rate of water in kg/m
T=[20,70];//Temperature at entry and exit of water in degree C
Q=10^7;//Heat in W/m^3
Ts=80;//Surface temperature in degree C
Cp=4179;//Specific heat of water in J/kg.K

//CALCULATIONS
Tb=(T(1)+T(2))/2;//Film temperature in degree C
L=((4*(m/60)*Cp*(T(2)-T(1)))/(3.14*(Do^2-Di^2)*Q));//Length of tube in m
qs=((Q*(Do^2-Di^2))/(4*Di));//Heat flux at the surface in W/m^2
h=(qs/(Ts-T(2)));//Heat transfer coefficient at the outlet in W/m^2.K

//OUTPUT
mprintf('Length of tube is %3.3f m \nHeat transfer coefficient at the outlet is %3.0f W/m^2.K',L,h)

//=================================END OF PROGRAM==============================
