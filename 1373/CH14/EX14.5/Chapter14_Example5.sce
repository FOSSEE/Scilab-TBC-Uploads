//Chapter-14, Example 14.5, Page 585
//=============================================================================
clc
clear

//INPUT DATA
T=25;//Temperature of air in degree C
v=3;//Velocity im m/s
D=0.01;//Diameter of tube in m
L=1;//Length of tube in m

//CALCULATIONS
v1=(15.7*10^-6);//Kinematic viscosity in m^2/s
DAB=(0.62*10^-5)//DAB value in m^2/s
Re=(v*D)/v1;//Reynolds number
Sh=3.66;//Schmidt number
h=(Sh*DAB)/D;//Average mass transfer coefficient in m/s

//OUTPUT
mprintf('Average mass transfer coefficient is %3.5f m/s',h)

//=================================END OF PROGRAM==============================
