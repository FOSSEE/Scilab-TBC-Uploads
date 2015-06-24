// Example 2.4.3  page 2.12

clc;
clear;

delta = 1.2/100;      // Relative refractive difference index
n1=1.45;        // Core refractive index 

NA= n1*sqrt(2*delta);       //computing numerical aperture
Acceptance_angle = asind(NA);   //computing acceptance angle
si = %pi * NA^2;        //computing solid acceptance angle

printf("\nNumerical aperture is %.3f.\nAcceptance angle is %.2f degree.\nSolid acceptance angle is %.3f radians.",NA,Acceptance_angle,si);

//answer in the book for Numerical aperture is 0.224, deviation of 0.001
//answer in the book for solid acceptance angle is 0.157, deviation of 0.002
