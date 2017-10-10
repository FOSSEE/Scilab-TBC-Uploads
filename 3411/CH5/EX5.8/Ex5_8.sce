//Example 5_8
clc();
clear;
//To calculate the Bragg angle and the wavelength of X-rays
//Given plane indices are (1,1,1)
theta=87      //units in degrees
theta=theta/2    //units in degrees
a=0.2      //units in nm
h=1
k=1
l=1
d=a/sqrt(h^2+k^2+l^2)        //units in nm
lamda=2*d*sin(theta*(%pi/180))          //units in nm
printf("Bragg angle theta=%.1fdegrees \n wavelength lamda=%.3fnm",theta,lamda)
