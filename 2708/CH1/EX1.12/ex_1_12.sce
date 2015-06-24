//Example 1.12 // refractive index of sheet
clc;
clear;
//given data :
w=5460D-10;// wavelength in m
n=6;// number of fringe shifted
t=6.3D-6;//thickness of material
u=(n*w)/t +1; // equation for fefractive index
disp(u,"refractive index of sheet")
