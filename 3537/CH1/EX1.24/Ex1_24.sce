//Example 1_24
clc();
clear;
//To calculate the refractive index of the liquid
lemda=5.895*10^-7                         //units in mts
D=0.3*10^-2                             //units in mts
R=1                                     //units in mts
n=5
u=(4*R*n*lemda)/D^2
printf("The reractive index of the liquid is %.2f",u)
