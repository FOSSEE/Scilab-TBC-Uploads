// Example 5.30
// Computation of value of reflectance 
// Page no 489

clc;
clear;
close;

// Given data
n1=3.5;                  // Refractive index of silicon
n2=1;                    // Refractive index of photodiode

//Value of reflectance
R=((n1-n2)/(n1+n2))^2;
   
//Display result on command window
printf("\n Value of reflectance (R) = %0.2f  ",R);
