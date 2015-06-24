clc
//to calculate distance between the two coherent sources
lambda=5890*10^-10 //wavelength in m
omega=9.424*10^-4 //width of the fringes in m
D=.80 //distance in m
twod=D*lambda/omega
disp("the distance between two coherent sources is twod="+string(twod)+"m")
