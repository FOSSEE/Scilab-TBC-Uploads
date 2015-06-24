//Example 1_5_u1
clc();
clear;
//To find the refractive index of coil
volume=0.2      //units in CC
thickness=volume/(100*100)       //units in cm
n=1
lamda=5.5*10^-5       //units in cm
r=0
u=(n*lamda)/(2*thickness*cos(r))
printf("Refractive index of oil is %.3f",u)
