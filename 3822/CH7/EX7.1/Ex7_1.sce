
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 7.1
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
theta=30;//value of angle of deliverence in degrees
b=cosd(theta);// cosine value of the theta
a=log10(b);//constant
c=log10(1/2);//constant
n=c/a;//  refractive index
mprintf("The value of refractive index is= %.2f",n);//the answer vary due to rounding
