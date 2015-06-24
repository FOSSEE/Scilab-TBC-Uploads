//example 3
//work produced
clear
clc
Psat=190.2 //in kPa
P1=Psat //saturation pressure in state 1
vf=0.001504 //in m^3/kg
vfg=0.62184 //in m^3/kg
x1=0.25 //quality
v1=vf+x1*vfg //specific volume at state 1 in m^3/kg
v2=1.41*v1 //specific volume at state 2 in m^3/kg
P2=600 //pressure in state 2 in kPa
m=0.5 //mass of ammonia in kg
W=m*(P1+P2)*(v2-v1)/2 //woork produced by ammonia in kJ
disp('hence,work produced by ammonia is 12.71 kJ')