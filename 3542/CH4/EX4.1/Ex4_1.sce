// Example 4.1
// To find far field distance for antenna with maximum dimensions and operating frequency
// Page No.109

clc;
clear all;

// Given data
D=1;                   // Maximum dimension in m
f=900*10^6;            // Operating frequency in Hz
C=3*10^8;              // Speed of light in m/sec

lambda=C/f;            // Carrier wavelength in m

// To find far field distance
df=(2*D^2)/lambda;     //Far field distance

//Displaying the result in command window
printf('\n Far field distance = %0.0f meter',df);
