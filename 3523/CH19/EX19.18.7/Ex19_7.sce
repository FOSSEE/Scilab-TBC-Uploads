clear all
clc
close

epso=8.84*1e-12;//Permittivity of air in F/m
rho=15*1e-3;//Charge density in C/m^3
Ebd=3*1e6;//Breakdown voltage in V/m

//Thickness of dust layer in mm
dbd=Ebd*epso/rho
printf('Thickness of dust layer is %f mm',dbd*1e3)
