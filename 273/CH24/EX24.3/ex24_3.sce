clc;clear;
//Example 24.3
//calculation of normalised frequency

//given values
n=1.45;//core refractive index
d=.6;//core diametre in m
N=.16;//numerical aperture of fibre
l=.9*10^-6;//wavelength of light

//calculation
u=sqrt(n^2+N^2);//index of glass fibre
V=%pi*d*sqrt(u^2-n^2)/l;
disp(V,'normalised frequency is');