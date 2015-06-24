// Example 2.7.3  page 2.24

clc;
clear;

n1=1.482;       //refractive index of core
n2=1.474;       //refractive index of cladding
lamda=820d-9;       //Wavelength

NA=sqrt(n1^2 - n2^2);       //computing Numerical aperture
theta= asind(NA);        //computing acceptance angle
solid_angle=%pi*(NA)^2;     //computing solid angle
a=2.405*lamda/(2*3.14*NA);      //computing core radius
a=a*10^6;

printf("\nNumerical aperture is %.3f.\nAcceptance angle is %.1f degrees.\nSolid angle is %.3f radians.\nCore radius is %.2f micrometer.",NA,theta,solid_angle,a);

//answer in the book for Numerical aperture is 0.155, deviation of 0.001.
//answer in the book for acceptance angle is 8.9, deviation of 0.1.
//answer in the book for solid acceptance angle is 0.075, deviation of 0.001.
//answer in the book for core radius is 2.02 micrometer, deviation of 0.02 micrometer.
