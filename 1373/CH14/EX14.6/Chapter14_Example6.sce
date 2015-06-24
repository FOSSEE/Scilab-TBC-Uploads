//Chapter-14, Example 14.6, Page 586
//=============================================================================
clc
clear

//INPUT DATA
T=25;//Temperature of air in degree C
v=5;//Velocity in m/s
D=0.03;//Diameter of tube in m
DAB=(0.82*10^-5)//DAB value in m^2/s

//CALCULATIONS
v1=(15.7*10^-6);//Kinematic viscosity in m^2/s
Sc=(v1/DAB);//Schnidt number
Re=(v*D)/v1;//Reynolds number
h=(0.023*Re^(4/5)*Sc^(1/3)*DAB)/D;//Mass transfer coefficient in m/s

//OUTPUT
mprintf('Mass transfer coefficient is %3.4f m/s',h)

//=================================END OF PROGRAM==============================
