// chapter 16
// example 16.12
// Determine supply frequency
// page-1037
clear;
clc;
// given
del=2.5; // in mm (depth of heating)
rho=5E-5; // in ohm-cm (resistivity)
ur=1; // relative permeability
// calculate
del=del*1E-3; // changing unit from mm to m
rho=rho*1E-2; // changing unit from ohm-cm to ohm-m
f=(rho/ur)*(503/del)^2; // calculation of supply frequency
printf("\nThe supply frequency is \t f=%.2f kHz",f*1E-3);