//clc();
clear;
//To determine the visible number of orders
N=10520;            //grating lines in lines per centimetre
theta=90;           //angle in degrees
lambda=5*10^(-5);         //wavelength of light in centimetres
e=1/N;
n=(e*sind(theta))/lambda;
printf("the number of orders visible in grating spectra is %f",n);
