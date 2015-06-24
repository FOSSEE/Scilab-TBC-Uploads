// Example 2.8.4
clc;
clear;
NA=0.16     //Numerical aperture
n1=1.45     //core refractive index
d=60d-6     //core diameter
lamda=0.82d-6       //wavelength
a=d/2;      //core radius
v=2*3.14*a*NA/lamda;        //computing normalized frequency
v=round(v);
M=v^2/2;        //computing guided modes
M=floor(M);
printf("if normalized frequency is taken as %d, then %d guided modes.",v,M);
