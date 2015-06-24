//Chapter-7, Example 7.1, Page 275
//=============================================================================
clc
clear

//INPUT DATA
Ta=20;//Temperature of air in degree C
Tp=134;//Temperature of heated plate in degree C
v=3;//Velocity of flow in m/s
L=2;//Length of plate in m
W=1.5;//Width of plate in m
x=0.4;//Distance of plane from the plate in m
k=(15.06*10^-6);//Kinematic viscosity in m^2/s

//CALCULATIONS
Re=(v*x)/k;//Reynold number
q=((5*x)/sqrt(Re))*1000;//Thickness of boundary layer in mm
Cfx=(0.664/sqrt(Re))/10^-3;//Local skin friction coefficient *10^-3

//OUTPUT
mprintf('Thickness of boundary layer is %3.1f mm \nLocal skin friction coefficient is %3.2f*10^-3',q,Cfx)

//=================================END OF PROGRAM==============================
