// Example 2.4.1  page 2.11

clc;
clear;

n1=1.49;        //core refractive index
n2=1.45;        //cladding refractive index

phi = asind(n2/n1);     //computing critical angle
NA = sqrt(n1^2 - n2^2); //computing numericla aperture
theta= asind(NA);       //computing acceptance angle

printf("\nCritical angle is %.2f degrees.\nNumerical aperture is %.3f.\nAcceptance angle is %.2f degree.",phi,NA,theta);

//answer in the book for Numerical aperture is 0.343, deviation of 0.003
//answer in the book for Acceptance angle is 20.24, deviation of 0.18
