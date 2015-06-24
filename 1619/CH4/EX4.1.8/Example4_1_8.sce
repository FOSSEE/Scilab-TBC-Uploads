//Example 4.1.8 page 4.9

clc;
clear;
n= 0.70;
Ip= 4*10^-6;
e= 1.602*10^-19;
h= 6.625*10^-34;
c= 3*10^8;
E= 1.5*10^-19
lamda = h*c/E;
lamda=lamda*10^6; //converting um for displaying...
printf("The wavelength is %.2f um",lamda);
R= n*e/E;
Po= Ip/R;
Po=Po*10^6; //converting um for displaying...
printf("\n\nIncident optical Power is %.2f uW",Po);
