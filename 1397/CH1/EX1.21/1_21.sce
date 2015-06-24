//clc();
clear;
//To determine the slit width
theta=15;             //angle in degrees
lambda=6500*10^(-8);          //wavelength in centimetres
n=1;
a=(n*lambda)/sind(theta);
printf("slit width illuminated by white light is %f cm",a);
