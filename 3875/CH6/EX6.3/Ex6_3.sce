clc;
clear;
d=12.5*10^-6 //thickness of the quarter wave plate in m
myu_diff=0.01 //difference in refractive indices

//calculation

lambda=d*4*(myu_diff)
mprintf("The wavelength is = %1.0e m",lambda)
