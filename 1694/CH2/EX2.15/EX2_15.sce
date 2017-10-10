clear;
clc;
printf("\nEx2.15\n");
//page no.-63
//given
m=9.11*10^-31;.............//mass of e in kg
E=1.6*10^-15;..............//energy in joule
h=6.625*10^-34;.............//planck's constant
d=5.5*10^-11;...............//interplanar spacing in m
//we knoe , E=m*v^2/2

v=sqrt((2*E)/m);..........//velocity in m/s
//By debroglie relationship

lambda=h/sqrt(2*m*E)...........//wavelength in m

//By bragg's eq. 2*d*sind(theta)=n*lambda
//n=1, for first order 
theta=asind(lambda/(2*d))..............//angle of deviation

printf("\nangle of deviation is 6.4 degree\n");
