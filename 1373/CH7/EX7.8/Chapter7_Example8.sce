//Chapter-7, Example 7.8, Page 296
//=============================================================================
clc
clear

//INPUT DATA
D=0.3;//Diameter of cylinder in m
L=1.7;//Height of cylinder in m
Ts=30;//Surface temperature in degree C
v=10;//Speed of wind in m/s
Ta=10;//Temperature of air in degree C

//CALCULATIONS
Tf=(Ta+Ts)/2;//Film temperature in degree C
k=0.0259;//Thermal conductivity of air at 20 degree C 
Pr=0.707;//prant number of air at 20 degree C
v1=(15*10^-6);//Kinematic viscosity of air at 20 degree C
Re=(v*D)/v1;//Reynolds number
Nu=0.027*Re^0.805*Pr^(1/3)//Nusselts number
h=(Nu*k)/D;//Heat transfer coefficent in W/m^2.K
Q=(h*3.14*D*L*(Ts-Ta));//Rate of heat loss in W

//OUTPUT
mprintf('Rate of heat loss is %3.1f W',Q)

//=================================END OF PROGRAM==============================
