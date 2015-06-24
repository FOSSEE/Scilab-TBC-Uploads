//Chapter-1, Example 1.2, Page 11
//=============================================================================
clc
clear

//INPUT DATA
L=1;//Length of the flat plate in m
w=0.5;//Width of the flat plate in m
T=30;//Air stream temperature in degree C
h=30;//Convective heat transfer coefficient in W/m^2.K
Ts=300;//Temperature of the plate in degree C

//CALCULATIONS
A=(L*w);//Area of the plate in m^2
Q=(h*A*(Ts-T)/(1000));//Heat transfer in kW

//OUTPUT
mprintf('Heat transfer rate is %3.2f kW',Q)

//=================================END OF PROGRAM==============================
