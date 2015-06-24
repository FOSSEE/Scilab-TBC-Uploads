//Example 2.10 //Difference of wavelengths
clc;
clear;
//given data
d_theta=.01;// change of diffraction angle
theta=%pi/6;// diffraction angle
w=5000;// wavelength used in A
dw=w*d_theta*cotg(theta)//change of wavelength in A
disp(dw,"difference of wavelength in A")
