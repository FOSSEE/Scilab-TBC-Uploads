//clc();
clear;
//To calculate miller indices of reflecting planes
lambda=0.82;       //wavelength in Angstrom
theta=75.86;              //glancing angle in degrees
n=1;        //diffraction order
a=3;        //lattice constant in Angstrom
d=(n*lambda)/(2*sind(theta));
disp(d);
//but d!=a
//answer in book is wrong
