//Example 1.4 // thickness of plate 
clc;
clear;
//given data :
u=1.5;//referactive index of glass plate
r=60;// refraction angle in degree
r=r*%pi/180;// to convert in radian
w=5890D-10;// wavelength in m
//for least thickness
t=w/(2*u*cos(r));
t=t*1D10;// to convert in angstrom
disp(t,"thickness of plate in A")
