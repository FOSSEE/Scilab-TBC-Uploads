// Example 2.7.7  page 2.27

clc;
clear;

n1=1.48;    //refractive index of core
n2=1.46;    //refractive index of cladding

NA=sqrt(n1^2-n2^2);     //computing Numerical aperture
theta=asind(NA);        //computing acceptance angle

printf("\nNumerical aperture is %.3f.\nAcceptance angle is %.2f degrees.",NA,theta);

//answer in the book for Numerical aperture is 0.244, deviation of 0.002.
//answer in the book for Acceptance angle is 14.12, deviation of 0.09.
