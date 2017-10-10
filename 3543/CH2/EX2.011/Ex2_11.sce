// Example 2.11 
//Calculation of (a) reflection and (b) loss of light signal at joint areas.
// Page no 482

clc;
clear;
close;

// Given data
n1=1.5;                  // Refractive index of core
n=1;                     // Refractive index of air

// (a) Reflection at the fiber air interface 
R=((n1-n)/(n1+n))^2;     

// (b) Light loss due to fiber air interface
l= -10*log10(1-R);

//Display result on command window
printf("\n Reflection at the fiber air interface = %0.2f  ",R);
printf("\n Light loss due to fiber air interface (dB)= %0.2f  ",l);


