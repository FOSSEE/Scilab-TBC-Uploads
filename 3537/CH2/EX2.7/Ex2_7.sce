//Example 2_7
clc();
clear;
//TO find the highest order of the spectrum
N=5000                           //units in lines/cm
lemda=6000*10^-8                 //units in cm
theta=90                        //units in degrees
k=((1/N)*sin(theta))/lemda
printf("The highest order of the spectrum that can be seen is %.0f",k)
