//chapter 4
//example 4.5
//Find wavelength in X.U.
//page 76-77
clear;
clc;
//given
theta=6; // in degree (glancing angle)
p=2170; // in Kg/m^3 (density)
M=58.46; // Molecular weight of NaCl
N=6.02E26; // in Kg-molecule (Avogadro's number)
n=1; // order
XU=1E-12; //since 1X.U.= 1E-12m
//calculate
d=(M/(2*N*p))^(1/3);//calclation of lattice constant
printf('\nThe spacing constant is \td=%1.3E m',d);
// Since 2dsin(theta)=n(lambda)
// therefore we have
lambda=2*d*sind(theta)/n; //calculation of wavelength
printf('\n\nThe wavelength is \t\t=%1.2E m',lambda);
lambda=lambda/XU;
printf('\n\t\t\t\t=%.1f X.U.',lambda);
// Note: The  answer in the book is wrong due to calculation mistake
