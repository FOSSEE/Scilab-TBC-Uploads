//Chapter-7, Example 7.10, Page 297
//=============================================================================
clc
clear

//INPUT DATA
D=0.015;//Diamter of copper bus bar in m
Ta=20;//Temperature of air stream in degree C
v=1;//Velocity of air in m/s
Ts=80;//Surface temperature in degree C
p=0.0175;//Resistivity of copper in ohm mm^2/m

//CALCULATIONS
Tf=(Ta+Ts)/2;//Film temperature in degree C
k=0.02815;//Thermal conductivity of air at 50 degree C 
Pr=0.703;//prant number of air at 50 degree C
v1=(18.9*10^-6);//Kinematic viscosity of air at 50 degree C
Re=(v*D)/v1;//Reynolds number
Nu=0.3+(((0.62*sqrt(Re)*Pr^(1/3))/(1+(0.4/Pr)^(2/3))^(1/4))*(1+(Re/28200)^(5/8))^(4/5));//Nusselts number
h=(Nu*k)/D;//Heat transfer coefficent in W/m^2.K
I=1000*3.14*D*sqrt((h*(Ts-Ta)*D)/(4*p));//Current in A

//OUTPUT
mprintf('Heat transfer coefficient between the bus bar and cooling air is %3.2f W/m^2.K \nMaximum admissible current intensity for the bus bar is %3.0f A',h,I)

//=================================END OF PROGRAM==============================
