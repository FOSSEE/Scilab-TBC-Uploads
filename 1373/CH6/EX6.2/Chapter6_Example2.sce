//Chapter-6, Example 6.2, Page 241
//=============================================================================
clc
clear

//INPUT DATA
L=1;//Length of the palte in m
W=1;//Width of the plate in m
v=2.5;//Velocity of air in m/s
Re=(5*10^5);//Reynolds number at the transition from laminar to turbulant
p=(0.85*10^-5);//Dynamic viscosity in N.s/m^2
r=1.12;//Density in kg/m^3

//CALCULATIONS
x=(p*Re)/(r*v);//Calculated length in m

//OUTPUT
mprintf('Since the actual length of the plate is %i m, which is less than %3.2f m, the flow is laminar over the entire length of plate',L,x)

//=================================END OF PROGRAM==============================
