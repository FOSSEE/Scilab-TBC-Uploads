//Chapter-7, Example 7.11, Page 298
//=============================================================================
clc
clear

//INPUT DATA
Ta=30;//Temperature of air stream in degree C
v=25;//Velocity of stream in m/s
x=0.05;//Side of a square in m
D=0.05;//Diameter of circular cylinder in m
Ts=124;//Surface temperature in degree C

//CALCULATIONS
Tf=(Ta+Ts)/2;//Film temperature in degree C
k=0.03;//Thermal conductivity of air at 77 degree C 
Pr=0.7;//prantL number of air at 77 degree C
v1=(20.92*10^-6);//Kinematic viscosity of air at 77 degree C
Re=(v*D)/v1;//Reynolds number
Nu1=0.027*Re^0.805*Pr^(1/3);//Nussults number for circulat tube
h1=(Nu1*k)/D;//Heat tansfer coefficient for circular tube in W/m^2.K
Nu2=0.102*Re^0.675*Pr^(1/3);//Nussults number for square tube
h2=(Nu2*k)/D;//Heat transfer coefficient for square tube in W/m^2.K

//OUTPUT
mprintf('Heat transfer coefficient for circular tube is %3.1f W/m^2.K \nHeat transfer coefficient for square tube is %3.2f W/m^2.K',h1,h2)

//=================================END OF PROGRAM==============================
