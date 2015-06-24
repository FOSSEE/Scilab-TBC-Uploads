//clc();
clear;
//To calculate the angle at which third order reflection can occur
n=3;      //diffraction order
lambda=0.79*10^-10;      //wavelength in m
d=3.04*10^-10;          //spacing in m
theta=asind((n*lambda)/(2*d));
printf("braggs angle in degrees is");
disp(theta);
