// Example 2.16.1  page 2.67

clc;
clear;

n1=1.48;        //core refractive index
n2=1.46;        //cladding refractive index

phi = asind(n2/n1);     //computing critical angle
NA = sqrt(n1^2 - n2^2); //computing numericla aperture
theta= asind(NA);       //computing acceptance angle
printf("\nCritical angle is %.2f degrees.\nNumerical aperture is %.3f.\nAcceptance angle is %.2f degree.",phi,NA,theta);

//answers in the book
//Critical angle is 80.56 degrees, deviation of 0.01.
//Numerical aperture is 0.244, deviation of 0.002.
//Acceptance angle is 14.17 degree, deviation of 0.14.
