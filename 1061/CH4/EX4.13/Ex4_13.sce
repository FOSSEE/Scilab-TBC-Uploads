//Ex:4.13
clc;
clear;
close;
n1=1.5;// core refractive index
y=0.85*10^-6;// wavelength in m
dl=0.024;// relative refractive index difference
N2=sqrt(n1^2-2*dl*n1^2);// cladding refractive index
n2=1.46;
Rcs=(3*n1^2*y)/((4*%pi)*(n1^2-n2^2)^1.5);// critical radius of curvature for multimode fiber
printf("The critical radius of curvature =%f um", Rcs*10^6);