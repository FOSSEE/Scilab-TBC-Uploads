//Example 3_3
clc();
clear;
//To calculate the wavelength
d=12.5      //units in microns
d=d*10^-6   //units in mts
u0_ue=0.01
lamda=4*d*u0_ue
printf("The wavelength is %.7fmts",lamda)
//In text book the answer is printed wrong as 4*10^-7mts
//The correct answer is 5*10^-7 mts
