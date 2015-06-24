//Chapter-7, Example 7.26, Page 324
//=============================================================================
clc
clear

//INPUT DATA
T=[120,149];//Initail and final temperatures in degree C
m=2.3;//Mass flow rate in kg/s
D=0.025;//Diameter of the tube in m
Ts=200;//Surface temperature in degree C

//CALCULATIONS
Tb=(T(1)+T(2))/2;//Bulk mean temperature in degree C
p=916;//Density in kg/m^3 of air at 134.5 degree C
Cp=1356.6;//Specific heat of air at 134.5 degree C in J/kg.K
u=(0.594*10^-6);//Kinematic viscosity of air at 134.5 degree C in m^2/s
k=84.9;//Thermal conductivity of air at 134.5 degree C in W/m.K
Pr=0.0087;//prantl number of air at 134.5 degree C
Q=(m*Cp*(T(2)-T(1)))/1000;//Total heat transfer in kW
v=(m/(p*(3.14/4)*D^2));//Velocity of flow in m/s
Re=(v*D)/u;//Reynolds number
Pe=(Pr*Re);//Peclet number
Nu=(4.82+(0.0185*Pe^0.827));//Nussults number
h=(Nu*k)/D;//Heat transfer coefficient in W/m^2.K
L=((Q*1000)/(h*3.14*D*(Ts-Tb)));//Minimum length of the tube in m if the wall temperature is not to exceed 200 degree C

//OUTPUT
mprintf('Minimum length of the tube if the wall temperature is not to exceed 200 degree C is %3.3f m',L)

//=================================END OF PROGRAM==============================
