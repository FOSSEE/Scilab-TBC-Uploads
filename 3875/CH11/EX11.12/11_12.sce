clc;
clear;
a=0.2 //lattice parameter in nm
h=1 //x intercept of parallel plane
k=1 //y intercept of parallel plane
l=1 //z intercept of parallel plane
phi=87 //incident angle in degree

//calculation
tetha=phi/2
d=(a/sqrt(h^2+k^2+l^2))
lambda=(2*d*sind(tetha))

mprintf("The wavelength is = %1.3f nm\n",lambda)
mprintf("The Braggs angle is = %2.1f degree",tetha)
