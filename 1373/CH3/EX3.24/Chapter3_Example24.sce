//Chapter-3, Example 3.24, Page 93
//=============================================================================
clc
clear

//INPUT DATA
Do=0.025;//O.D of the rod in m
k=20;//Thermal conductivity in W/m.K
Q=(2.5*10^6);//Rate of heat removal in W/m^2

//CALCULATIONS
ro=(Do/2);//Outer radius of the rod in m
q=((4*Q)/(ro));//Heat transfer rate in W/m^3
T=((-3*q*ro^2)/(16*k));//Temperature drop from the centre line to the surface in degree C

//OUTPUT
mprintf('Temperature drop from the centre line to the surface is %3.3f degree C',T)

//=================================END OF PROGRAM==============================
