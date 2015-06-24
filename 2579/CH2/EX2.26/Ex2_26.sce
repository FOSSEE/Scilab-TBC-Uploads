//Ex:2.26
clc;
clear;
close;
y=5;// wavelength in m
D=75;// directivity
Aem=(D*y^2)/(4*%pi);// max efeective aperture in m^2
printf("The max efeective aperture = %f m^2", Aem);
