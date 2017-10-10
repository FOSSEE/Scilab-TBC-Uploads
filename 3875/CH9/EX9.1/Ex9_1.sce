clc;
clear;
d=60 // diameter in micrometer
n1=1.48 //core refractive index
n2=1.41 //cladding refractive index
lambda=0.8 //wavelength of light source in micrometer

//calculation

NA=sqrt(n1^2-n2^2) //numerical aperture
V=(%pi*d*NA)/lambda //normalized frequency in cycles/sample
M=V^2/2

mprintf("The no of modes propogating in the fibre are %e",M)
//The answer provided in the textbook is wrong.
