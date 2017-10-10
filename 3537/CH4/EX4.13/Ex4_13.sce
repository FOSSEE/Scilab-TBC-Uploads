//Example 4_13
clc();
clear;
//To calculate the glancing angle for the second order diffraction
lemda=0.071*10^-9                           //units in meters
a=0.28*10^-9                               //units in meters
h=1
k=1
l=0
n=2
theta=(asin((n*lemda)/(2*(a/(sqrt(h^2+k^2+l^2))))))*180/%pi
printf("The glancing angle for the second order diffraction is %.2f degrees",theta)
