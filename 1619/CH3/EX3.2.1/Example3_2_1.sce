//Example 3.2.1 page 3.10

clc;
clear;

x= 0.07;
Eg= 1.424+1.266*x+0.266*x^2;
lamda= 1.24/Eg;
printf("The emitted wavelength is %.2f um",lamda);
