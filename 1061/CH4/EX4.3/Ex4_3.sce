//Ex:4.3
clc;
clear;
close;
n=1.46;// core refractive index
p=0.286;// photoelastic coeff
b=7*10^-11;// isothermal compressibility
k=1.381*10^-23;// boltzmann's constant
tf=1400;// fictive temperature in k
y1=0.85*10^-6;// wavelength in m
yr=((8*%pi^3)*(n^8)*(p^2)*(b*k*tf))/(3*y1^4);
e=2.718281828;
akm=e^(-yr*10^3);
at=10*log(1/akm)/log(10);// attenuation at y=0.85 um
y2=1.55*10^-6;// wavelength in m
yr1=((8*%pi^3)*(n^8)*(p^2)*(b*k*tf))/(3*y2^4);
akm1=e^(-yr1*10^3);
at1=10*log(1/akm1)/log(10);// attenuation at y=1.55 um
y3=1.30*10^-6;// wavelength in m
yr2=((8*%pi^3)*(n^8)*(p^2)*(b*k*tf))/(3*y3^4);
akm2=e^(-yr2*10^3);
at2=10*log(1/akm2)/log(10);// attenuation at y=1.30 um
printf("The Loss of an optical fiber =%f dB/km", at);
printf("\n The Loss of an optical fiber =%f dB/km", at1);
printf("\n The Loss of an optical fiber =%f dB/km", at2);