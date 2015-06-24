//Chapter 12
//page no 443
//given
clc;
clear all;
Lmax=60;            //in km
D=17;           //in ps/nm.km
dL=0.5;     //in nm
fb=1/Lmax/10^9/dL/10^-9/D/10^-12*10^-9;
printf("\n Maximum system bit rate,fb = %0.2f Gb/s",fb);
