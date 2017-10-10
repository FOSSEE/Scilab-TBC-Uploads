//Example 1_47
clc();
clear;
//To find the thickness of the glass plate
lemda=5000                    //units in angstroam
lemda=5000*10^-8              //units in cm
s_beta=6
u=1.5
t=((s_beta)*lemda)/(u-1)
printf("The thickness of the glass plate is %.4f cm",t)
