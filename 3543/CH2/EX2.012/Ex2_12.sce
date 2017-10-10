// Example 2.12 
// Computation of (a) numerical aperature and (b) maximum angle of entrance
// Page no 482

clc;
clear;
close;

//Given data
n1=1.48;             // Refractive index of core
n2=1.46;             // Refractive index of cladding

// (a) Numerical Aperture 
NA=sqrt(n1^2-n2^2);

//(b) Maximum angle of entrance
theata=asind(NA);

//Displaying result in the command window            
printf("\n Numerical Aperture  = %0.3f  ",NA);
printf("\n Maximum angle of entrance (degress) = %0.0f  ",theata);

// Final answer in the book is wrong. Please refer example 2.11 of 
// Fiber Optic Communication by Gerd Keiser book.

 
