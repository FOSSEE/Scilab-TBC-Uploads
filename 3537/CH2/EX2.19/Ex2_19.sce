//Example 2_19
clc();
clear;
//To calculate the wavelength of the spectral line
n=2
N=4250                             //units in centimeters
theta=30                          //units in degrees
lemda=(((1/N)*sin(theta*%pi/180))/n)*10^8
printf("The wavelength of the spectral line is %.0f angstrom",lemda)
