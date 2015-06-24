clc();
clear;
//To determine the minimum thickness of the plate for normal incidence of light
lambda=550*10^-9;                   //wavelength
mew=1.38;                           //refractive index
t=(lambda/(4*mew))*10^9             //thickness
printf("The minimum thickness of the plate for normal incidence of light is %f nm",t);