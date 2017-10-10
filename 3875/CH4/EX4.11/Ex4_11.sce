clc;
clear;
lambda=4800*10^-10 //wavelength in m
n=5 //position occupied by the central bright fringe
myu=1.4 //refractive index of glass covering slit 1
myu_0=1.7 ////refractive index of glass covering slit 2

//calculation
t=(n*lambda)/(myu_0-myu)

mprintf("The thickness of the glass plate is = %1.1e m",t) //The answer provided in the textbook is wrong.














