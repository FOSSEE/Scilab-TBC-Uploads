clc;
clear;
//from the table given in the sum, first observation is taken to calculate the unit cell and dimension
theta=6.05 //degree in radians
lambda=71 //wavelength in pm
h=1 //lattice parameter for x axis
k=0 //lattice parameter for y axis
l=0 //lattice parameter for z axis

//calculations
sin_square_theta=sind(theta)^2 //angle in degrees
alpha=(lambda/2)*((h^2+k^2+l^2)/sqrt(sin_square_theta))

mprintf("The lattice constant is alpha = %d pm",ceil(alpha))
