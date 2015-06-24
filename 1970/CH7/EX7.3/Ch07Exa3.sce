// Scilab code Exa7.3: : Page-292 (2011)
clc; clear;
a_c = 0.221;      // Attenuation coefficient, cm^2/g
A = (1-exp(-0.22))*100;    // Attenuation of beam of X-rays in passing through human tissue
printf("\nThe attenuation of beam of X-rays in passing through human tissue = %d percent", ceil(A));

// Result
// The attenuation of beam of X-rays in passing through human tissue = 20 percent 