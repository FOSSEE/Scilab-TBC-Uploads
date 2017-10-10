//Example 2_18
clc();
clear;
//To find the wavelength of the light
theta=15                            //units in degrees
a=2.5*10^-6                         //units in meters
lemda=((a*%pi*sin(theta*%pi/180))/(1.43*%pi))*10^10
printf("The wavelength of light is %.0f angstrom",lemda)
