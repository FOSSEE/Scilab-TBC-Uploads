// Example 2.3.1  page 2.10

clc;
clear;

delta = 1/100;      // Relative refractive difference index
n1=1.46;        // Core refractive index (assumption)

NA= n1*sqrt(2*delta);       //computing numerical aperture
theta = 1 - delta;
Critical_angle = asind(theta);  //computing critical angle

printf("\nNumerical aperture is %.2f.\nCritical angle is %.1f degree.",NA,Critical_angle);
