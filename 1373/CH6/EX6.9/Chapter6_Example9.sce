//Chapter-6, Example 6.9, Page 258
//=============================================================================
clc
clear

//INPUT DATA
L=100;//Length of rectangular duct in m
A=[0.02,0.025];//Area of duct in m^2
Tw=40;//Temperature of water in degree C
v=0.5;//Velocity of flow in m/s
k=(0.66*10^-6);//kinematic viscosity in m^2/s
p=995;//Density of water in kg/m^3

//CALCULATIONS
P=2*(A(1)+A(2));//Perimeter of the duct in m
Dh=(4*(A(1)*A(2)))/P//Hydraulic diameter of the duct in m
Re=(v*Dh)/k;//Reynolds number
f=0.316*Re^(-0.25);//Friction factor 
hL=(f*L*v^2)/(2*Dh*9.81);//Head loss in m
P=(hL*9.81*p)/10^4;//Pressure drop in smooth rectangular duct in 10^4 N/m^2

//OUTPUT
mprintf('Pressure drop in smooth rectangular duct is %3.4f*10^4 N/m^2',P)

//=================================END OF PROGRAM==============================
