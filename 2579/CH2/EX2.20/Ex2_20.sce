//Ex:2.20
clc;
clear;
close;
D=900;// directivity
// Aem=(D.y^2)/(4*%pi), where y= Wavelength
Aem=(D/(4*%pi));// max effective aperture
printf("The max effective aperture= %f*y^2, where y= wavelength", Aem);