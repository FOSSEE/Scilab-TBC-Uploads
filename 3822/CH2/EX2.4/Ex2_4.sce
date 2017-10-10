
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 2.4
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
a=5*10^-6;//radius in m
Vc=2.405;//cut off value of V-parameter for single mode
n1=1.46;//refractive index of the core
delta=0.0025;//refractive index difference between the core and cladding
c1=(2*delta)^0.5;//constant value
c2=(2*%pi*a)/Vc;//constant value
lamdac=c2*n1*c1;//cut off wavelength in m
mprintf("\n Cut-off Wavelength is = %.2f um ",lamdac*1e6);//multiplication by 1e6 to convert the unit from m to um
//The answer vary due to rounding
