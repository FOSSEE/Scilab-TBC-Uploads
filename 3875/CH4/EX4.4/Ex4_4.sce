clc;
clear;
D=1 //distance between the source and the screen in m
lambda=5893*10^-10 //wavelength in m
d1=4.05*10^-3 //distance between two images of the slit in m in first case
d2=2.90*10^-3 //distance between two images of the slit in m in second case

//calculation
d=sqrt(d1*d2)
disp(d)
Beta=(lambda*D)/d 

mprintf("The distance between interference fringes is %1.2e m",Beta)
