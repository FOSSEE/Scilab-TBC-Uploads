clear;
clc;
printf("\nEx2.36\n");
//page no.-84
//given
theta=45;................//angle in degrees
_lambda=0.022*10^-10;.....//wavelength in m
h=6.6*10^-34;..........//planck's constant in J-sec
m=9.1*10^-31;.........//mass of electron 
c=3*10^8;..............//speed of light in m/s
//acc. to compton exp.,_lambda-lambda=(h*(1-cosd(theta)))/m*c

lambda=_lambda-((h*(1-cosd(theta)))/(m*c)).........//wavelength in angstrom

printf("\nwavelength of incident X-rays is 0.015 angstrom\n");
