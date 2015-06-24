clc();
clear;
//To calculate the minimum number of lines per cm 
lambda=450*10^-9;                   //wavelength
n=2;
dlambda=1*10^-9;                   //difference in wavelength
N=lambda/(n*dlambda)               //minimum number of lines per cm 
printf("The minimum number of lines per cm is %d",N);