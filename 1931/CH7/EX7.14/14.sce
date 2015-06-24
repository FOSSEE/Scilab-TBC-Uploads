clc
clear
//INPUT DATA
d=8.48*10^28//free electron density of copper in m^-3
y=2.8138*10^-9//mean free path in m
v=1.1536*10^5//velocity of copper in m s^-1
t=20 //temperature of copper in c
Kb=1.38*10^-23//Boltzmann's constant in m^2 Kg s^-2 k^-1

//CALCULATION
K=1/2*(d*v*y*Kb)//thermal conductivity of copper in W m^-1 K^-1

//OUTPUT
printf('The thermal conductivity of copper is %3.2f W m^-1 K^-1',K)
