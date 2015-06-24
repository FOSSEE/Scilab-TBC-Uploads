//clc();
clear;
//To calculate numerical aperture
n1=1.55;         //refractive index of core
n2=1.50;         //refractive index of cladding
n0=1;
NA=sqrt(n1^2-n2^2)/n0;
printf("numerical aperture is %f",NA);
