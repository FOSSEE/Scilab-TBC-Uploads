//Example 1_21
clc();
clear;
//To find the wavelength of light used
D5=0.3                         //units in cm
D25=0.8                       //units in cm
R=100                        //units in cm
P=20
lemda=(D25^2-D5^2)/(4*P*R)
printf("The wavelength of the light used is %f cm",lemda)
