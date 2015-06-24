//Ex:5.17
clc;
clear;
close;
n1=1.46;// core refractive index
NA=0.2;// numerical aperture
L=1.5*10^3;// length in m
c=3*10^8;// the spee of light in m/s
dt=(L*NA^2)/(2*c*n1);//intermodel dispersion in ns/km
printf("The intermodel dispersion =%f ns/km", dt*10^9);