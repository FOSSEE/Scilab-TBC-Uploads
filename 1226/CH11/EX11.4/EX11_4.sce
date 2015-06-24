clc;funcprot(0);//EXAMPLE 11.4
// Initialisation of Variables
pc=5.45;......................//Petrol consumption in kg/h
afr=15;......................//Air fuel ratio
af=2*10^(-6);................//Fuel jet orifice area in m^2
z=0.00635;...................//Distance between tip of fuel jet and level of petrol in the float chamber in m
Cda=0.8;............................//Coefficient of discharge of venturi throat
rhoa=1.29;........................//Density of air in kg/m^3
spgrp=0.72;........................//Specific gravity of fuel
rhow=1000;.........................//Density of water in kg/m^3
g=9.81;..............................//Acceleration due to gravity in m/s^2
Cdf=0.75;........................//Coefficient of discharge of the fuel
//calculations
mf=pc/3600;....................//Fuel consumed in kg/sec
rhof=spgrp*rhow;...............//Density of fuel in kg/m^3
delp=(((mf/(af*Cdf))^2)*(1/(2*rhof)))+(g*z*rhof);......................//Depression in venturi throat in N/m^2
h2odep=delp/(g*1000);................................//Depression in venturi throat in cm of Water
disp(h2odep*100,"Suction at the throat (in cm of Water):")
ma=mf*afr;................//Air flow rate
At=sqrt(((ma/Cda)^2)*(1/(2*rhoa*delp)));....................//Throat area in m^2
dt=sqrt(At/(%pi/4));........................................//Throat diameter in m
disp(dt*100,"Throat area (in cm):")
Ct=sqrt((2*g*z*rhof)/rhoa);..........................//Velocity of air across the venturi throat in m/sec
disp(Ct,"Velocity of air across the venturi throat (in m/s):")

