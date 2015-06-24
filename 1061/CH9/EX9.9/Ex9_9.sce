//Ex:9.9
clc;
clear;
close;
n=0.15;// quantum efficiency
e=1.6*10^-19;// charge
h=6.63*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=0.85*10^-6;// cut off wavelength in m
f=c/y;// frequency in Hz
R=(n*e)/(h*f);// responsivity in A/W
printf("The responsivity =%f A/W ", R);