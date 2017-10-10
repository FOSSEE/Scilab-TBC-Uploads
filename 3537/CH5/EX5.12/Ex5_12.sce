//Example 5_12
clc();
clear;
//To calculate the wavelength ansd maximum order of diffraction
n=1
d=0.282*10^-9     //units in meters
theta=8.583   //units in degrees
lamda=((2*d*sin(theta*%pi/180))/n)*10^9  //units in nm
printf("wavelength is lamda=%.3f nm",lamda)
//When theta=90 degrees
lama=lamda*10^9   //units in meters
n=(2*d)/lamda*10^9
printf("\nMaximum order of diffraction is n=%d",n)
