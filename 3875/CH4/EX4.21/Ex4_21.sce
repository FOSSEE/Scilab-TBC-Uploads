clc;
clear;
disp_X=0.05896*10^-3 //displacement of mirror in m
n=200 //no of fringes

//calculation
lambda=(2*disp_X)/n

mprintf("The wavelength of the light is = %1.3e m",lambda)
//The answer provided in the textbook is wrong.
