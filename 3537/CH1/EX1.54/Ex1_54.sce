//Example 1_54
clc();
clear;
//To find the wavelength of the light
R=70                 //units in cm
//Diameter of the 10th dark ring
D=0.433              //units in cm
n=10
lamda=D^2/(4*R*n)           //units in cm
printf("The wavelength of the light is %f cm",lamda)
