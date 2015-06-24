//Chapter-7, Example 7.17, Page 312
//=============================================================================
clc
clear

//INPUT DATA
k=0.175;//Thermal conductivity in W/m.K
Di=0.006;//I.D of the tube in m
L=8;//Length of the tube in m
dT=50;//Mean temperature difference in degree C

//CALCULATIONS
h=(3.66*k)/Di;//Heat transfer coefficient in W/m^2.K
Q=(h*3.14*Di*L*dT);//Heat transfer rate in W

//OUTPUT
mprintf('Heat transfer coefficient is %3.2f W/m^2.K \nHeat transfer rate is %3.0f W',h,Q)

//=================================END OF PROGRAM==============================
