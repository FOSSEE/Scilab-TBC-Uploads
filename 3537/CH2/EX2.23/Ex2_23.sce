//Example 2_23
clc();
clear;
//To calculate the possible order of spectra
N=5.095*10^3                     //units in lines per inch
lemda=6000*10^-8                 //units in cm
m=(1/N)/lemda
printf("The possible order of the spectra is %.0f",m)
