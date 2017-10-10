clc;
clear;
lambda=6000*10^-10 //wavelength in m
myu_0=1.554 //refractive index
myu_e=1.544 //refractive index

//calculation
d=lambda/(4*(myu_0-myu_e))

mprintf("The thickness of the quarter wave plate is = %1.1e m",d)
