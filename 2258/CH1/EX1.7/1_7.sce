clc();
clear;
// To calculate the wavelength associated with electron
M=9.1*10^-31;    //mass of electron in kg
h=6.66*10^(-34);
E=2000;   //energy in eV
Ej=E*1.6*10^-19;   //energy in J
lamda=h/sqrt(2*M*Ej);   //wavelength in m
lamda_nm=lamda*10^9;    //converting lamda from m to nm
printf("The wavelength associated with electron is %f nm",lamda_nm);
