clc();
clear;
// To calculate the wavelength of an electron
V=10;   //potential in kV
V=V*10^3;   //potential in V
lamda=12.26/sqrt(V);    //wavelength
printf("The wavelength is %f Armstrong",lamda);
