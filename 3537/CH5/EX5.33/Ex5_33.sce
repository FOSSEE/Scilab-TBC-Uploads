//Example 5_33
clc();
clear;
//To calculate the wavelength and maximum order of diffraction
d=0.282*10^-9                   //units in meters
theta=8.583                   //units in degrees
lamda=2*d*(sin(theta*%pi/180))
lamda1=lamda*10^10    //units in A
theta=90  //units in degrees
n=(2*(d)*sin(theta*%pi/180))/lamda
printf("wave length lamda=%.3fA",lamda1)
printf("\nMaximum order of diffraction n=%d",round(n))
