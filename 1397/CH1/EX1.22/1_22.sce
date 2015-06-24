//clc();
clear;
//To determine the wavelength of light
theta=15;            //first diffraction maxima in degrees
a=2.5*10^(-6);       //slit width in metres
lambda=(a*sind(theta)*10^10)/1.43;
printf("wavelength of light is %f Armstrong",lambda);
