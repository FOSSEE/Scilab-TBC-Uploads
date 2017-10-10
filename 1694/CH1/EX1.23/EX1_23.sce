clear;
clc;
printf("\nEx1.23\n");
//page no.-34
//given
d=0.282*10^-9;...........//lattice spacing in m
theta=8.5833;.............//glancing angle
n=1;......................//order
//From Bragg's law

lambda=(2*d*sind(theta))/n...........//wavelength in m 

//for max order of diffraction theta is 90 degree

no=2*d*sind(90)/lambda.........//maximum order of diffraction

printf("\nmax order of diffraction is 7 approx\n");
