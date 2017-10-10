//Example 1_49
clc();
clear;
//To find the thickness of the thinnest film
u=1.33
lemda=6000                    //units in angstroam
lemda=6000*10^-8              //units in cm
i=0                          //units in degrees
r=0                          //units in degrees
n=1
t=(n*lemda)/(2*u*cos(r))
printf("Thickness of the thinnest film is %.7f cm",t)
