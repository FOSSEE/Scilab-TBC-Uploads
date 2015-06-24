//Ex:9.5
clc;
clear;
close;
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
Eg=1.43;// in eV
Eg1=Eg*1.602*10^-19;// in J
y=(h*c)/Eg1;// cut off wavelength in m
printf("The cut off wavelength =%f um", y*10^6);