//Example 5.7, Page number 5.29

clc;clear;close
// variable declaration
a=5;//unitless
n1=1.48;//unitless
delta=0.01;//unitless
V=25;// V number

// Calculation
lamda=(%pi*(a*10**-6)*n1*sqrt(2*delta))/V   //  Cutoff Wavelength

// Result
printf("Cutoff Wavellength = %.3f micro-m",(lamda*10**7))
