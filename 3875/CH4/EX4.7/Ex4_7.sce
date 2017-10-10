clc;
clear;
d1=0.42*10^-3 //distance between images obtained at position 1 in m
d2=1.21*10^-3 //distance between images obtained at position 2 in m
Beta_1=0.4*10^-3 //bandwidth in m at position 1
Beta_2=0.5*10^-3 //bandwidth in m at position 2
D2_minus_D1=0.60 //displacement in position in m

//calculation

d=sqrt(d1*d2) //distance between sources in m
lambda=(d*(Beta_2-Beta_1))/D2_minus_D1

mprintf("The wavelength of the source is = %1.3e m",lambda)
//The answer provided in the textbook is wrong.
