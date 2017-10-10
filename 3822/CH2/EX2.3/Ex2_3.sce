
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 2.3
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
n1=1.6;//core and cladding refractive index of first fiber
n2=1.44;//core and cladding refractive index of second fiber
lamda=0.8;//wavelength of the electromagnetic wave in um
c=(2*%pi)/lamda;//constant value propagation constant
betamax=c*n1;//maximum value of maximum value of beta
betamin=c*n2;//minimum value of minimum value of beta
mprintf("\n Maximum value of Beta is= %.2f rad/um ",betamax);
mprintf("\n Minimum value of Beta is= %.2f rad/um",betamin);
//The answer vary due to rounding
