//Ex:8.9
clc;
clear;
close;
n=3.6;// refractive index
c=3*10^8;// speed of light in m/s
y=0.85*10^-6;// wavelength in m
df=275*10^9;// frequency separation of the modes in Hz
L=c/(2*n*df);// crystal length in m
L1=L*10^6;// crystal length in um
q=2*n*L/y;// the number of longitudinal modes
printf("The crystal length =%f um", L1);
printf("\n The the number of longitudinal modes =%d", q);
printf("\n answer is wrong in textbook");