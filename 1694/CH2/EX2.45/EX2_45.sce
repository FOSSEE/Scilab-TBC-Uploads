clear;
clc;
printf("\nEx2.45\n");
//page no.-90
//given
E=1.56;...............//energy of e ejected in eV
lambda_o=2500*10^-8;..........//threshold wavelength in cm
c=3*10^10;...........//speed of light in cm/sec
e=1.6*10^-12;.........//charge in ergs
h=6.62*10^-27;........//planck's constant in ergs-sec

vo=c/lambda_o........//threshold frequency in m/s

Eo=h*vo/e................//energy in eV

TE=Eo+E..............//total energy
//we know ,E=h*c/lambda

lambda=((h*c)/(TE*e))..........//wavelength in cm

printf("\nwavelength of incident light is 1.9*10^-5 cm\n");
