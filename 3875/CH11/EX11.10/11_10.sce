clc;
clear;
lambda=0.12 //wavelength in nm
tetha=28 //Braggs angle in degree
n=2 //second order reflection

//calculation
d=(n*lambda)/(2*sind(28))

mprintf("The interplanar spacing of the reflecting planes of the crystal is = %1.2f nm",d)
