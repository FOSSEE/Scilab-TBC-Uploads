clc;
clear;
lambda=6000*10^-8 //wavelength in cm
N=5000 //lines per cm
k=3
e=1/5000 //in cm
sin_theta=1 //angle in radian

//calculation 
k=(e*sin_theta)/lambda

printf("The highest order of spectrum that can be seen is %d",k)
