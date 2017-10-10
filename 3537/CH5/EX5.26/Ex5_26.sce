//Example 5_26
clc();
clear;
//To calculate the braggs angle and Wavelength
theta2=87   //units in degrees
theta=theta2/2      //units in degrees
h=1
k=1
l=1
a=0.2    //units in nm
d=a/sqrt(h^2+k^2+l^2)   //units in nm
lamda=2*d*sin(theta*%pi/180)  //units in nm
printf("lamda=%.3f nm",lamda)
