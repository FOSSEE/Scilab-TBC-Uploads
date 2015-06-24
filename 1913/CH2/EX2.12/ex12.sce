clc
clear
//Input data
W=135;//Work done by the system in kJ/kg
V1=0.37;//Specific volume of fluid at inlet in m^3/kg
V2=0.62;//Specific volume of fluid at outlet in m^3/kg
P1=600;//Pressure at the inlet in kPa
P2=100;//Pressure at the outlet in kPa
C1=16;//Velocity at the inlet in m/s
C2=270;//Velocity at the outlet in m/s
Z1=32;//Inlet height from floor level in m
Z2=0;//Outlet height from floor level in m
q=-9;//Heat loss between inlet and discharge in kJ/kg
g=9.81;//Gravitational constant in m/s^2

//Calculations
U=((C2^2-C1^2)/2000)+(g*(Z2-Z1))/1000+(P2*V2-P1*V1)+W-q;//Change in specific internal energy of the system in kJ/kg

//Output
printf('Specific Internal Energy decreases by %3.3f kJ/kg ',U)
