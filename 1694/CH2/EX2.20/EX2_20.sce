clear;
clc;
printf("\nEx2.20\n");
//page no.-66
//given
d=10^-14;..................//width of special line in m
lambda=6*10^-7;.............//wavelength in m
c=3*10^8;....................//speed of light in m/s

//as E=(h*c*d)/lambda^2,  put in uncertainty relation ,E*t=h/2*%pi

t=lambda^2/(2*%pi*c*d).................//time required in sec

printf("\ntime required is 1.9*10^-8 sec\n");
