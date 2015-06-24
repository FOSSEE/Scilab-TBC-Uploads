//Chapter-7, Example 7.4, Page 283
//=============================================================================
clc
clear

//INPUT DATA
P=8;//Pressure of air in kN/m^2
Ta=250;//Temperature of air in degree C
L=1;//Length of the palte in m
W=0.3;//Width of the plate in m
v=8;//Velocity of air in m/s
Tp=78;//Temperature of plate in degree C

//CALCULATIONS
Tf=(Ta+Tp)/2;//Film temperature in degree C
Cp=1018;//Specific heat of air at 164 degree C and 1 atm pressure
kw=(30.8*10^-6);//Kinematic viscosity of air at 164 degree C and 1 atm pressure
k=0.0364;//Thermal conductivity of air at 164 degree C and 1 atm pressure
Pr=0.69;//prant number of air at 164 degree C and 1 atm pressure
k1=kw*(101330/(P*1000));//Kinematic viscosity of air at 164 degree C and 8kN/m^2 pressure
Re=(v*L)/k1;//Reynolds number
h=0.662*(k/L)*sqrt(Re)*Pr^(1/3);//Heat transfer coefficient in W/m.K
Q=2*h*L*W*(Ta-Tp);//Rate of heat removal in W

//OUTPUT
mprintf('Rate of heat removal is %3.1f W',Q)

//=================================END OF PROGRAM==============================
