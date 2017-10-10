// Example 2.3
//  Calculation of (a) critical angle (b) numerical aperature and (c) acceptance angle
// Page no 38

clc;
clear;
close;

// Given data
n1=1.5;                           // Refractive index of core
n2=1.47;                          // Refractive index of cladding)

// (a) Critical angle
theatha=asind(n2/n1);            
// (b) Numerical aperature
NA=sqrt(n1^2-n2^2);               
// (c) Acceptance angle
theatha1=asind(NA);                     

//Display result on command window
printf("\n Critical angle (degrees) = %0.1f  ",theatha);
printf("\n Numerical aperature = %0.2f  ",NA);
printf("\n Acceptance angle (degrees) = %0.1f  ",theatha1);

