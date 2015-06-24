clc();
clear;
//To calculate the accelerating voltage
h=6.626*10^-34;                         //plancks constant
c=3*10^8;                               //speed of light
e=1.6*10^-19;
lambdamin=0.02*10^-9;                   //minimum wavelength in nm
V=((h*c)/(lambdamin*e))*10^-3           //accelerating voltage
printf("The accelerating voltage needed to produce minimum wavelength of 0.02 nm is %f kV",V);