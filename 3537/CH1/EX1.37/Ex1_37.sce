//Example 1_37
clc();
clear;
//To find the separation between the slits
lemda=5100                   //units in angstroam
lemda=5100*10^-8           //units in cm
D=200                      //units in cm
betaa=0.01                //units in mts
betaa=0.01*10^-3                //units in cm
d=(lemda*D)/betaa*10^-3
printf("The separation between the slits is %.2f mts",d)
