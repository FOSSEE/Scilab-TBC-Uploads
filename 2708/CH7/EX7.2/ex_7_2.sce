//Example 7.2
clc;
clear;
// 1st part //impedence of medium
ur=1;//relative permeability
er=2;//relative permitivity
uo=(4D-7*%pi);// permeability(free space) in H/m
eo=8.85D-12;// permitivity(free space) in Farad/m
u=ur*uo;//permeability(medium) in H/m
e=er*eo;//permitivity(medium) in Farad/m
Z=sqrt(u/e);// impedence of medium
disp(Z,"impedence of medium in ohm")
// 2nd part //peak magnetic field intensity
Eo=5;//peak electric field strength in V/m
Ho=Eo/Z;// Intensity of magnetic field in A/m
disp(Ho,"Intensity of magnetic field in A/m")
// 3rd part //velocity of electromagnetic wave
v=1/sqrt(u*e);//velocity in m/s
disp(v,"velocity of magnetic field in m/s")
