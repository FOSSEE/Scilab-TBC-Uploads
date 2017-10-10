//Example 3_3
clc();
clear;
//To calculate the thickness of a quarter wave plate for monochromotic light
lemda=600*10^-9                     //units in meters
u0=1.5533
ue=1.5442
t=lemda/(4*(u0-ue))*10^3
printf("The thickness of a quarter wave plate for monochromotic light is %.4f mm ",t)
