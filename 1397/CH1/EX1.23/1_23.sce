//clc();
clear;
//To determine the wavelength of spectral line
n=2;
N=4250;           //grating in lines per centimetre
theta=30;         //angle in degrees
e=1/N;
lambda=(e*sind(theta)*10^8)/n;
printf("wavelength of the spectral line when a plane transmission grating is illuminated with a sodium light  is %f Armstrong",lambda);
