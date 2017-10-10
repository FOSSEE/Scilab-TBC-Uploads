//Example 1_33
clc();
clear;
//To calculate the refractive index of the liquid
lemda=5.895*10^-7                    //units in meters
D=0.3                               //units in centimeters
D=0.3*10^-2                         //units in meters
R=100                               //units in centimeters
R=100*10^-2                        //units in meters
n=5
u=(4*R*n*lemda)/D^2
printf("The refractive index of the liquid is %.3f",u)
