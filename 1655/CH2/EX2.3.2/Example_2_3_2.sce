// Example 2.3.2  page 2.10

clc;
clear;

delta = 1/100;      // Relative refractive difference index
n1=1.47;        // Core refractive index 

NA= n1*sqrt(2*delta);       //computing numerical aperture

printf("\nNumerical aperture is %.1f.",NA)
