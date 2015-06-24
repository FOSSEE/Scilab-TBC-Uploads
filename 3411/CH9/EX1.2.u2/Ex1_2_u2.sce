//Example 1_2_u2
clc();
clear;
//To calculate the wavelength of the  radiation emitted
h=6.63*10^-34
m=9.1*10^-31
l=10^-9
c=3*10^8
lamda=(8*m*c*l^2)/(27*h)  //units in mts
lamda=lamda*10^9        //units in nm
printf("The wavelength of the radiation is lamda=%.1fnm",lamda)
