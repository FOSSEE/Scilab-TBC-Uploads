clc;
clear;
myu=1.5 //refractive index of glass plate
n=30 //no of fringes 
d=0.018 //thickness of the plate in mm

//calculation
lambda=(2*(myu-1)*d)/n
mprintf("The wavelength of light used is = %4.0e m",lambda) 
//The answer provided in the textbook is wrong.
