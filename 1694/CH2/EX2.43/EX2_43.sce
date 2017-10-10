clear;
clc;
printf("\nEx2.43\n");
//page no.-88
//given
h=6.624*10^-27;..........//planck's constant in ergs-sec
m=9.1*10^-28;.........//mass of electron in kg
w=3.2*10^-12;.........//work function in joule
c=3*10^10;...........//speed of light in cm/sec
lambda=3600*10^-8;...//wavelength in m
e=1.6*10^-12;.........//charge in ergs

lambda_o=(h*c)/w;..........//threshold wavelength in cm

vo=c/lambda_o;........//threshold frequency in m/s

v=c/lambda;..........//frequency

E=((v-vo)*h)/e.................//energy in eV

printf("\nkinetic energy is 1.45 eV\n");

printf("\nso stopping potential is 1.45 eV\n");

v=sqrt((2*E*e)/m)............//velocity of electron in cm/sec

printf("\nVelocity of electron is 7.1*10^7 cm/sec\n");  

