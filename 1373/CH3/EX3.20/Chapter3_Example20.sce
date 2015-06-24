//Chapter-3, Example 3.20, Page 83
//=============================================================================
clc
clear

//INPUT DATA
L=0.1;//Thickness of the wall in m
Q=(4*10^4);//Heat tansfer rate in W/m^3
h=50;//Convective heat transfer coefficient in W/m^2.K
T=20;//Ambient air temperature in degree C
k=15;//Thermal conductivity of the material in W/m.K

//CALCULATIONS
Tw=(T+((Q*L)/(2*h)));//Surface temperature in degree C
Tmax=(Tw+((Q*L*L)/(8*k)));//Maximum temperature in the wall in degree C

//OUTPUT
mprintf('Surface temperature is %i degree C \n Maximum temperature in the wall is %3.3f degree C',Tw,Tmax)

//=================================END OF PROGRAM==============================
