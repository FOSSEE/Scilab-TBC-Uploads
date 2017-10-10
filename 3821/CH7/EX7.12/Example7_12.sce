///Chapter No 7 Fluid Mechanics
///Example 7.12 Page No 122
/// Find Intensity of pressure of water
///Input data
clc;
clear;
Z1=1.5;                   //open tank contain water in m
Z2=2.5;                   //oil of specific gravity for depth in m
S=0.9;                    //oil of specific gravity 
rho1=1000;                //density of water in Kg/m**3
rho2=S*10^3;             //density of oil in Kg/m**3
g=9.81;                   //gravity



///calculation
P=rho1*g*Z1+rho2*g*Z2;    //Intensity of pressure in kPa


///output
printf('intensity of pressure=%f N/m^2 \n',P);
