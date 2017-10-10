//Example 1_45
clc();
clear;
//To calculate the thickness of the glass plate
lemda=5000                      //units in angstroam
lemda=5000*10^-8               //units in cm
u=1.56
n=16
t=(n*lemda)/(u-1)
printf("Thickness of the glass plate is %.6f cm",t)
