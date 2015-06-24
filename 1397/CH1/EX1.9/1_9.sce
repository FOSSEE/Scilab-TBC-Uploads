//clc();
clear;
// To determine the thickness of a soap film
mew=1.33;           //refractive index of soap film
n=2;
lambda=7000*10^(-8);       //wavelength of red light in centimetres
t=(((2*n)+1)*(lambda/2))/(2*mew);
printf("thickness of the soap film which gives constructive second order interference is %f cm",t);
