//Example 1_46
clc();
clear;
//To find the least thickness of the glass plate
lemda=6000                      //units in angstroam
lemda=6000*10^-8                //units in cm
u=1.5
r=50                            //units in degree
n=1                             //n=1 for least thickness
t=(n*lemda)/(2*u*cos(r*%pi/180))
printf("Least Thickness of the glass plate is %.7f cm",t)
