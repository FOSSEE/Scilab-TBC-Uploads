clc;
clear;
I=0.7*10^-2 //size of the image in m
u=0.3 //distance between the convex lens and the slit in m
v=0.7 //distance between the images in m
D=1 // distance between the slit and the images in m
Beta=0.0195*10^-2 //fringe width in m

//calculation
d=(I*u)/v
lambda=(Beta*d)/D

mprintf("The wavelength of light used is = %e m or 5850*10^-10 m.",lambda)
