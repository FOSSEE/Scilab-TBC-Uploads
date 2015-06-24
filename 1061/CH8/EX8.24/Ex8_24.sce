//Ex:8.24
clc;
clear;
close;
c=3*10^8;// speed of light in m/s
h=6.64*10^-34;// plank constant
Eg=1.43;// gap energy in eV
y=(1.24*10^-6)/Eg;// wavelength in m
dy=0.1*10^-9;// in m
df=(dy*c)/y^2;// width in Hz
printf("The wavelength =%f um", y*10^6);
printf("\n The width =%d GHz", df/10^9);