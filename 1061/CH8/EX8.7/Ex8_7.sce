//Ex:8.7
clc;
clear;
close;
n=1.5;// refractive index
L=0.05;// crystal length in m
y=0.5*10^-6;// wavelength in m
c=3*10^8;// speed of light in m/s
q=2*n*L/y;// the number of longitudinal modes
df=c/(2*n*L);// frequency separation of the modes in Hz
Df=df/10^9;// frequency separation of the modes in GHz
printf("The number of longitudinal modes =%f", q);
printf("\n The frequency separation of the modes =%f GHz", Df);