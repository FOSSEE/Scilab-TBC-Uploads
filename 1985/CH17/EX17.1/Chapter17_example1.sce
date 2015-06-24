clc
clear
//Input data
m=0.8//Mass of the slab in kg
l=(9.648*10^-3)//Thickness of slab in m
d=(1.464*10^-3)//Thickness of the cardboard in m
r=(5.752*10^-2)//Radius of the slab in m
S=385//Specific heat of slab in J/kg.K
T2=363.5//Steady temperature of the slab in K
T1=372//Steady temperature of the steam chamber in K
dTt=(10/300)//Rate of cooling in K/s

//Calculations
K=(m*S*dTt*((r+2*l)/(2*r+2*l)))*(d/(3.14*r^2))*(1/(T1-T2))//Thermal conductivity of the cardboard in W/m.K

//Output
printf('Thermal conductivity of the cardboard is %3.4f W/m.K',K)
