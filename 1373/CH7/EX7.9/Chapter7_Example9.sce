//Chapter-7, Example 7.9, Page 297
//=============================================================================
clc
clear

//INPUT DATA
Ta=27;//Temperature of air stream in degree C
v=0.3;//Velodity of air in m/s
Q=100;//Poer of electric bulb in W
Te=127;//Temperature of electric bulb in degree C
D=0.06;//Diameter of sphere in m

//CALCULATIONS
Tf=(Ta+Te)/2;//Film temperature in degree C
k=0.03;//Thermal conductivity of air at 77 degree C 
Pr=0.697;//prant number of air at 77 degree C
v1=(2.08*10^-5);//Kinematic viscosity of air at 77 degree C
Re=(v*D)/v1;//Reynolds number
h=(k*0.37*Re^0.6)/D;//Heat transfer coefficient in W/m^2.K
Q=(h*3.14*D^2*(Te-Ta));//Heat transfer rate in W
Qp=(Q*100)/100;//Percentage of heat lost by forced convection 

//OUTPUT
mprintf("Heat transfer rate is %3.2f W \nPercentage of power lost due to convection is %3.2f percent',Q,Qp)

//=================================END OF PROGRAM==============================
