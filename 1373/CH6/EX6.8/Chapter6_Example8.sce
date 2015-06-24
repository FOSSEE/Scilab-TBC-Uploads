//Chapter-6, Example 6.8, Page 257
//=============================================================================
clc
clear

//INPUT DATA
L=3000;//Diatance transported in m
D=0.02;//I.D of the tube in m
Q=1.5;//Flow rate in litres per minute
k=(1*10^-6);//kinematic viscosity in m^2/s
pw=1000;//Density of water in kg/m^3

//CALCULATIONS
um=((Q/60)*10^-3)/(3.14*(D^2/4));//Average velocity in m/s
Re=(um*D)/k;//Reynolds number
x=0.05*D*Re;//Entry length in m
hL=((64/Re)*L*um^2)/(2*D*9.81)//Head loss in m
P=(pw*9.81*(3.14/4)*D^2*um*hL);//Power required to maintain this flow rate in W

//OUTPUT
mprintf('Head loss is %3.2f m \n Power required to maintain this flow rate is %3.4f W',hL,P)

//=================================END OF PROGRAM==============================
