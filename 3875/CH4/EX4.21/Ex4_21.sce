clc;
clear;
X2_minus_X1=0.05896*10^-3 //displacement of mirror in m
n=200 //no of fringes

//calculation
lambda=(2*X2_minus_X1)/n
mprintf("The wavelength of the light is = %1.3e m",lambda)
//The answer provided in the textbook is wrong.
