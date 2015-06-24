//clear//
//Caption: Program to determine the maximum allowable refractive index of the slab material
//Example14.5
//page 517
clear;
clc;
Lambda = 1.30e-06;//wavelength range over which single-mode operation
d = 5e-06;//slab thickness in metre
n2 = 1.45; //refractive index of the slab material
n1 = sqrt((Lambda/(2*d))^2+n2^2);
disp(n1,'The maximum allowable refractive index of the slab material n1=')
//Result
//The maximum allowable refractive index of the slab material n1=   
//     1.4558159  
