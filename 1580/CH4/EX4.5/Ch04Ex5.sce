// Scilab Code Ex4.5 : Page-4.14 (2004)
clc;clear;
lambda = 0.071;    // X-ray wavelength, nm
n = 2;       // Second order of diffraction
d_100 = 0.28;   // Interplanar spacing for (100) plane, nm
d_110 = d_100/sqrt(2);  // Interplanar spacing for (110) plane, nm
x = n*lambda/(2*d_110);   // sine of angle , degree
theta = asind(x);   // Glancing angle for second order diffraction  

printf("\nGlancing angle for second order diffraction  = %d degree ", round(theta));

// Result 
// Glancing angle for second order diffraction  = 21 degree  
