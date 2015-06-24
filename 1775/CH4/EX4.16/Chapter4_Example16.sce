//Chapter-4, Illustration 16, Page 205
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
C1=375;//Steam velocity in m/s
a1=20;//Nozzle angle
U=165;//Blade speed in m/s
m=1;//Mass flow rate of steam in kg/s
Wr=0.85;//Blade friction factor
Ca1=130;//Axial velocity at inlet from the velocity triangle in m/s
Ca2=Ca1;//Axial velocity at outlet in m/s
W1=230;//Relative velocity at inlet from the velocity triangle in m/s
Cx=320;//Change in whirl velocity from the velocity triangle in m/s

//CALCULATIONS
b2=41;//Blade angle at exit from the velocity triangle in degrees
b1=34;//Blade angle at exit from the velocity triangle in degrees
W=(m*Cx*U)/1000;//Power developed by turbine in kW

//OUTPUT
mprintf('Blade angles assumed are %3.0f degrees,%3.0f degrees \n Power developed by turbine is %3.1f kW',b1,b2,W)




//==============================END OF PROGRAM=================================
