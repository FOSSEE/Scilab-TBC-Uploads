// Example 2.7.12  page 2.30

clc;
clear;

n1=1.48;       //refractive index of core
n2=1.478;       //refractive index of cladding
lamda=820d-9;       //Wavelength

NA=sqrt(n1^2 - n2^2);       //computing Numerical aperture
theta= asind(NA);        //computing acceptance angle
solid_angle=%pi*(NA)^2;     //computing solid angle

printf("\nNumerical aperture is %.3f.\nAcceptance angle is %.2f degrees.\nSolid angle is %.4f radians.",NA,theta,solid_angle);

