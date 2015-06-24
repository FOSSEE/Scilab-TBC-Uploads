// Example 2.7.5  page 2.26

clc;
clear;

n1=1.48;     //core refractive index
n2=1.46;     //cladding refractive index
a=25d-6;     //core radius
lamda0=850d-9;
lamda1=1320d-9;
lamda2=1550d-9;

NA=sqrt(n1^2-n2^2);     //computing numerical aperture
v0=2*%pi*a*NA/lamda0;   //computing normalized frequency
M0=v0^2/2;      //computing guided modes
M0=floor(M0);
v1=2*%pi*a*NA/lamda1;
M1=v1^2/2;
M1=floor(M1);
v2=2*%pi*a*NA/lamda2;
M2=v2^2/2;
M2=floor(M2);
lamda0=lamda0*10^9;
lamda1=lamda1*10^9;
lamda2=lamda2*10^9;
printf("\nfor %d nm, normalized frequency = %.2f, Guided modes = %d.",lamda0,v0,M0);
printf("\nfor %d nm, normalized frequency = %.2f, Guided modes = %d.",lamda1,v1,M1);
printf("\nfor %d nm, normalized frequency = %.2f, Guided modes = %d.",lamda2,v2,M2);

//answers in the book (sligt deviations in each)
//for 850 nm, normalized frequency = 45, Guided modes = 1012
//for 1320 nm, normalized frequency = 28.91, Guided modes = 419
//for 1550 nm, normalized frequency = 24.67, Guided modes = 304 
