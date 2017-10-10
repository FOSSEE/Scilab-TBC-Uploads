clear;
clc;
printf("\nEx1.28\n");
//page no.-36
//given
E=3.76*10^-17;............//kinrtic energy of e- in joule
n=1;......................//order
theta=9.20694;............//glancing angle
h=6.625*10^-34;...........//planck constant
m=9.1*10^-31;...........//mass of electron
//from de-broglie relationship

lambda=h/sqrt(2*m*E).......//wavelength 

//from bragg's law

d=(n*lambda)/(2*sind(theta)).........//interplanar spacing in m

printf("\ninterplanar spacing is 2.52 angstrom\n");

