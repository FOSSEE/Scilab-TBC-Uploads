//Chapter 12
//page no 442
//given
clc;
clear all;
fb=1.25;            //in Gb/s
D=17;           //in ps/nm.km
dL=0.5;     //in nm
Lmax=1/fb/10^9/dL/10^-9/D/10^-12*10^-9;
printf("\n Maximum Link span,Lmax = %0.0f km",Lmax);
