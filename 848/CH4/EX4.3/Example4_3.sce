//clear//
//Caption: Finding Enegy gap and Wavelength
//Example4.3
//page146
clear;
close;
clc;
x =0.07;// compositional parameter of GaAlAs
Eg = 1.424+1.266*x+0.266*x^2;
Lamda = 1.240/Eg;
disp(Eg,'Band Energy gap in ev')
disp(Lamda,'Wavelength in micro meters')
//Result
// Band Energy gap in ev      1.5139234  
// Wavelength in micro meters 0.8190639  

