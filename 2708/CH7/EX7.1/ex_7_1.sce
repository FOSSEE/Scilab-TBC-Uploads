//Example 7.1 // Energy of plane wave
clc;
clear;
//given data :
u=(4D-7*%pi);// permeability(free space) in H/m
e=8.85D-12;// permitivity(free space) in Farad/m
H=1;// magnetic field in amp/m
E=H*sqrt(u/e);// formula to calculate
disp(E,"magnitude of Energy of plane wave in V/m")
