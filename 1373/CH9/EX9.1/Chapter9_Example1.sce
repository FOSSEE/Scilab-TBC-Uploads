//Chapter-9, Example 9.1, Page 378
//=============================================================================
clc
clear

//INPUT DATA
T=5527;//Temperature of black body in degree C
D=(1.39*10^6);//Diameter of the sun in km
L=(1.5*10^8);//Distance between the earth and sun in km

//CALCULATIONS
q=(5.67*10^-8*(T+273)^4*D^2)/(4*L^2);//Rate of solar radiation in W/m^2

//OUTPUT
mprintf('Rate of solar radiation on a plane normal to sun rays is %3.0f W/m^2',q)

//=================================END OF PROGRAM==============================
