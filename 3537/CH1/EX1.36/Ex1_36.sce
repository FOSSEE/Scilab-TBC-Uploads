//Example 1_36
clc();
clear;
//To find the order which will be visible at this point
lemda1=6000                         //units in angstroam
lemda1=6000*10^-8                  //units in cm
lemda2=4500                       //units in angstroam
lemda2=4500*10^-8                 //units in cm
n1=21
n2=(n1*lemda1)/lemda2
printf("The order is %.0f",n2)
