//Ex:5.23
clc;
clear;
close;
n1=1.5;// core refractive index
L=1000;// length in meter
NA=0.22;// numerical aperture
dl=(NA/n1)^2/2;
c=3*10^8;// the speed of ligth in m/s
dt=(L*n1*dl)/c;//intermodel dispersion in sec
dT=dt*10^9;//intermodel dispersion in ns
printf("The max dispersion =%d ns", dT);