clc;
clear;
vol=0.2 //volume of a drop of oil in cubic centimeter
area=100*100 //area in cm^2 
lambda=5.5*10^-5 //wavelength in m
r=0 //angle of incidence in degree
n=1 //number of dark band

//calculation
d=vol/area //thickness of the film of oil in cm
myu=(n*lambda)/(2*d*cosd(0))

mprintf("The refractive index of oil is = %1.3f",myu)
