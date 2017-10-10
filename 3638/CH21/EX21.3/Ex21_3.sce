//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 21.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambdac=0.6e-6;//Wavelength in m
//Let A be perturbation of length in m
A=149.3e-6;
L=2.63e-2;//Length of the periodic waveguide in m

DeltaLambda=0.8*A*lambdac/L;//Bandwidth of the wavelength filter in m
mprintf("\n DeltaLambda= %.1f nm",DeltaLambda/1e-9);//Division by 10^(-9) to convert into nm
