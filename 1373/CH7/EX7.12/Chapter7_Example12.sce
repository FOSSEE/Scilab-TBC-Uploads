//Chapter-7, Example 7.12, Page 302
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
k=0.0274;//Thermal conductivity of air at 42.5 degree C 
Pr=0.705;//prant number of air at 42.5 degree C
v1=(17.4*10^-6);//Kinematic viscosity of air at 42.5 degree C
p=1.217;//Density in kg/m^3
vmax=(v*ST)/(ST-D);//Maximum velocity in m/s
Re=(vmax*D)/v1;//Reynolds number
Nu=(1.13*0.518*Re^0.556*Pr^(1/3))*0.97;//Nusselts number
h=(Nu*k)/D;//Heat transfer coefficent in W/m^2.K
f=0.4;//From Fig. 7.10 on page no 303 
g=1.04;//From Fig. 7.10 on page no 303
dp=(n*f*p*vmax^2*g)/2;//Pressure drop in N/m^2

//OUTPUT
mprintf('Heat transfer coefficent is %3.2f W/m^2.K \nPressure drop is %3.0f N/m^2',h,dp)

//=================================END OF PROGRAM==============================
