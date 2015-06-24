clc
clear
//Input data
p1=1000;//Pressure at the inlet of the system in kPa
p2=15;//Pressure at the outlet of the system in kPa
v1=0.206;//Specific volume at the inlet of the system in m^3/kg
v2=8.93;//Specific volume at the outlet of the system in m^3/kg
h1=2827;//Specific enthalpy at the inlet of the system in kJ/kg
h2=2341;//Specific enthalpy at the outlet of the system in kJ/kg
c1=20;//Velocity at the inlet of the system in m/s
c2=120;//Velocity at the outlet of the system in m/s
z1=3.2;//Elevation at the inlet of the system in m
z2=0.5;//Elevation at the outlet of the system in m
m=2.1;//The fluid flow rate in kg/s
W=750;//The work output of the device in kW
g=9.81;//Gravitational constant in m/s^2

//Calculations
Q=m*[((c2^2-c1^2)/(2*1000))+((g*(z2-z1)/(1000)))+(h2-h1)]+W;//The heat loss/gain by the system in kW

//Output
printf('The Heat loss by the system Q = %3.4f kW ',Q)
