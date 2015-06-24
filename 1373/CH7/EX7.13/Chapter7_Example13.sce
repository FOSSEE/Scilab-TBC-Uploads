//Chapter-7, Example 7.13, Page 304
//=============================================================================
clc
clear

//INPUT DATA
n=7;//Number of rows of tube
Ta=15;//Temperature of air in degree C
v=6;//Velocity of air in m/s
ST=0.0205;//Transverse  pitch in m
SD=0.0205;//Longitudinal pitch in m
D=0.0164;//Outside diameter of the tube in m
Ts=70;//Surface temperature in degree C

//CALCULATIONS
Tf=(Ta+Ts)/2;//Film temperature in degree C
k=0.0253;//Thermal conductivity of air at 15 degree C 
Pr=0.710;//prant number of air at 15 degree C
v1=(14.82*10^-6);//Kinematic viscosity of air at 15 degree C
p=1.217;//Density in kg/m^3
Pr1=0.701;//prant number of air at 70 degree C
vmax=(v*ST)/(ST-D);//Maximum velocity in m/s
Re=(vmax*D)/v1;//Reynolds number
Nu=0.35*Re^0.6*(Pr/Pr1)^0.25;//
h=(Nu*k)/D;//Heat transfer coefficient in W/m^2.K

mprintf(' Heat transfer coefficient is %3.1f W/m^2.K which is 10 percent more than that obtained in the previous example',h) 

//=================================END OF PROGRAM==============================
