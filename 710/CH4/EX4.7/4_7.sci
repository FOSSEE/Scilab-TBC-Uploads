clc();
clear;
//To determine the thickness of the plate
n=50;                             //number of fringes
lambda=500*10^-9;                 //wavelength of light used
mew=1.5;                          //refractive index of the plate
t=((n*lambda)/(2*(mew-1)))*10^6   //thickness of the plate
printf("The thickness of the plate is %d micro meter",t);
