//Example 1_39
clc();
clear;
//To calculate the fringe width
lemda=5000                     //units in angstroam
lemda=5000*10^-8               //units in cm
d=0.05                         //units in cm
D=50                           //units in cm
betaa=(lemda*D)/d
printf("Fringe width is %.2f cm",betaa)
