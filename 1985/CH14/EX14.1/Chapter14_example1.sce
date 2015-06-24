clc
clear
s=5.87*10^7//Electrical conductivity of Cu in ohm^-1.m^-1
K=390//Thermal conductivity of Cu in W/m.K
T=(20+273)//Temperature in K

//Calculations
L=(K/(s*T))/10^-8//Lorentz number in W.ohm/K^2

//Calculations
printf('Lorentz number is %3.3f*10^-8 W.ohm/K^2',L)
