clc();
clear;
//To determine the wavelength of light used
x=0.055;                       //distance in fringe shift
n=200;                         //number of fringes
lambda=((2*x)/n)*10^6          //wavelength
printf("The wavelength of light used is %d nm",lambda);