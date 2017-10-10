//Example 1_18
clc();
clear;
//To calculate the smallest thickness of the plate
lemda=5890                         //units in angstroam
lemda=5890*10^-10                 //units in mts
u=1.5
n=1
r=60                             //units in degree
t=(n*lemda)/(2*u*cos(r*%pi/180))*10^10
printf("Thickness of the glass plate is %.0f angstroam",t)
