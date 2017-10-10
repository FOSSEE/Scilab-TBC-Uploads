//Example 6_3
clc();
clear;
//To calculate the wavelength of emission from GaAs
Eg=1.44*1.6*10^-19
h=6.626*10^-34
c=3*10^8
lamda=(h*c)/Eg
printf("Wavelength = %.10f",lamda)
