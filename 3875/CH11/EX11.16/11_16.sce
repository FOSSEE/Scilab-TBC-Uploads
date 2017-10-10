clc;
clear;
lambda=0.154 //wavelength in nm
theta1=20 //angle in degree
theta2=29 //angle in degree
h=1 //x intercept of parallel plane
k=1 //y intercept of parallel plane
l=0 //z intercept of parallel plane
//calculation
ratio=sind(theta1)^2/sind(theta2)^2 //ratio of sin^2 theta values of first and second angles
alpha=(lambda/2)*sqrt((sqrt(h^2+k^2+l^2))/sind(theta1)^2) 

mprintf("The crystal structure is bcc since the ratio is %1.1f\n",ratio)
mprintf("lattice constant alpha = %0.3f nm\n",alpha) // The answer provided in the textbook is wrong
mprintf("The element is tungsten since this lattice constant of %0.3f nm and crystallizes in the bcc structure",alpha) //The answer provided in the textbook is wrong
