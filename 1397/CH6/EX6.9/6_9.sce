//clc();
clear;
//To calculate the wavelength of X-rays and maximum order of diffraction
d=0.282*10^-9;          //lattice spacing in m
theta1=8.58333;     //glancing angle in degrees
n1=1;
lambda=(2*d*sind(theta1))/n1;
printf("wavelength in Armstrong is ");
disp(lambda);
theta=90;          //bragg's angle for maximum order of diffraction
n=(2*d*sind(theta))/lambda;
printf("maximum order of diffraction possible is ");
disp(n);
