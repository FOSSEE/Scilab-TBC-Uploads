//Chapter-7, Example 7.20, Page 318
//=============================================================================
clc
clear

//INPUT DATA
Tw=50;//Temperature of water in degree C
Di=0.005;//Inner diameter of the tube in m
L=0.5;//Length of the tube in m
v=1;//Mean velocity in m/s
Ts=30;//Surface temperature in degree C

//CALCULATIONS
Tf=(Tw+Ts)/2;//Film temperature in degree C
k=0.039;//Thermal conductivity of air at 15 degree C 
Pr=0.688;//prant number of air at 15 degree C
p=990;//Density of air at 50 degree C in kg/m^3
Cp=4178;//Specific heat of air at 50 degree C in J/kg.K
v1=(5.67*10^-7);//Kinematic viscosity of air at 50 degree C
v2=(6.57*10^-7);//Kinematic viscosity of air at 40 degree C
Re=(v*Di)/v1;//Reynolds number
h=((0.316/8)*((v*Di*10)/v2)^(-0.25)*p*Cp*v*(4.34)^(-2/3));//Heat transfer coefficient using the Colburn analogy in W/m^2.K

//OUTPUT
mprintf('Heat transfer coefficient using the Colburn analogy is %3.0f W/m^2.K',h)

//=================================END OF PROGRAM==============================
