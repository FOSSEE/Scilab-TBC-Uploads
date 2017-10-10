clc;
clear;
R=100 //radius of curvature in cm
D_5=0.3 //diameter of the 5th dark ring in cm
D_25=0.8 //diameter of the 25th dark ring in cm
p=20 //difference in no of fringes

//calculation
lambda=(D_25^2-D_5^2)/(4*p*R)
mprintf("The wavelength of light used is = %1.2e cm",lambda)
