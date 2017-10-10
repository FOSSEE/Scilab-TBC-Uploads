//Example 5_25
clc();
clear;
//To find the wavelength at which planes give rise to maximum intensity
d=275  //units in pm
theta=45   //units in degrees
lamda=(2*d*sin(theta*%pi/180))   //units in pm
n=3
printf("\nFor n=3 lamda=%.2f",lamda/n)     
n=4
printf("\nFor n=4 lamda=%.2f",lamda/n)     
printf("\nLamda lies beyond the range of wavelengths of polychromatic source")
