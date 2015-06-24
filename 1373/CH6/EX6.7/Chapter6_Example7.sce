//Chapter-6, Example 6.7, Page 257
//=============================================================================
clc
clear

//INPUT DATA
D=0.02;//I.D of the tube in m
Q=1.5;//Flow rate in litres per minute
k=(1*10^-6);//kinematic viscosity in m^2/s

//CALCULATIONS
um=((Q/60)*10^-3)/(3.14*(D^2/4));//Average velocity in m/s
Re=(um*D)/k;//Reynolds number
x=0.05*D*Re;//Entry length in m

//OUTPUT
mprintf('Since Re which is %3.0f less than 2300, the flow is laminar. \n Entry length is %3.3f m',Re,x)

//=================================END OF PROGRAM==============================
