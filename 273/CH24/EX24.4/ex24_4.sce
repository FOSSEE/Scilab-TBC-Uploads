clc;clear;
//Example 24.4
//calculation of normailsed frequency and no of modes

//given values
n=1.52;//core refractive index
d=29*10^-6;//core diametre in m
l=1.3*10^-6;//wavelength of light
x=.0007;//fractional refractive index

//calculation
u=n*(1-x);//index of glass fibre
V=%pi*d*sqrt(n^2-u^2)/l;
disp(V,'normalised frequency is');
N=V^2/2;
disp(N,'no of modes is');