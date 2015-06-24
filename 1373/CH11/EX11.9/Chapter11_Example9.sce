//Chapter-11, Example 11.9, Page 494
//=============================================================================
clc
clear

//INPUT DATA
T=100;//Temperature of dry steam in degree C
Do=0.025;//Outer diameter of the pipe in m
Ts=84;//Surface temmperature of pipe in degree C
Tf=(T+Ts)/2;//Film temperature in degree C
p1=963.4;//Density of liquid in kg/m^3
u=(306*10^-6);//Dynamic viscosity in N.s/m^2
hfg=2257;//Enthalpy in kJ/kg
pv=0.596;//Density of vapour in kg/m^3
k1=0.677;//Thermal conductivity in W/m.K

//CALCULATIONS
h=(0.725*((9.81*p1*(p1-pv)*k1^3*hfg*1000)/(u*(T-Ts)*Do))^0.25);//Heat transfer coefficient in W/m^2.K
q=(h*3.14*Do*(T-Ts))/1000;//Heat transfer per unit length in kW/m
m=(q/hfg)*3600;//Total mass flow of condensate per unit length in kg/h

//OUTPUT
mprintf('Rate of formation of condensate per unit length is %3.2f kg/h',m)

//=================================END OF PROGRAM==============================
