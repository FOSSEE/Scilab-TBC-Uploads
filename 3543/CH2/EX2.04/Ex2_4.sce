// Example 2.4
// Calculation of (a) Numerical aperature and (b) critical angle
// Page no 480

clc;
clear;
close;

// Given data
n1=1.5;                   // Refractive index of core
n2=1.47;                  // Refractive index of cladding

// (a) Numerical aperature
NA= sqrt(n1^2-n2^2);                

// (b) Critical angle
theatha=asind(n2/n1);               

//Display result on command window
printf("\n Numerical aperature = %0.2f ",NA);
printf("\n Critical angle (degrees)= %0.1f  ",theatha);


