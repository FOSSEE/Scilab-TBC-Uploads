clear;
clc;
printf("\nEx2.44\n");
//page no.-89
//given
lambda_o=2300*10^-8;..........//threshold wavelength in cm
lambda=1800*10^-8;............//wavelength in cm
c=3*10^10;...........//speed of light in cm/sec
e=1.6*10^-12;.........//charge in ergs

vo=c/lambda_o;........//threshold frequency in m/s

v=c/lambda;..........//frequency
E=((v-vo)*h)/e.................//energy in eV

printf("\nkinetic energy is 1.52 eV\n");
