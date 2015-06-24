// Example 6.3.1  page 6.7

clc;
clear;

x=0.07;
Eg=1.424+1.266*x+0.266*x^2;
lamda=1.24/Eg;      //computing wavelength
printf("\nWavlength is %.3f micrometer.",lamda);
