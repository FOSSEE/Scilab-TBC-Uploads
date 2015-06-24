//Example 1.3 // wavelength of ligth  
clc;
clear;
//given data :
d=19D-4;// distance between slits in m
D=1;//distance between source and screen in m
b=.31D-3;//fringes width in m
w=b*d/D;// wavelength in m
w=w*1D10;// to convert in A
disp(w,"wavelength of light in A(angstrom)")
