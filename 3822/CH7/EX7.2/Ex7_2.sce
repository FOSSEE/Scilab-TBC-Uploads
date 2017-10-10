
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 7.2
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
theta=10;// value of theta in degrees
phi=0;// value of phi in degrees
a=log10(1/2);// value of constant
c=log10(cosd(theta));// constant
L=a/c;// lateral power distribution
mprintf(" The Lateral Power Distribution is= %.2f",L);//the answer vary due to rounding
