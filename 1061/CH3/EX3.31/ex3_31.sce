//Ex:3.31
clc;
clear;
close;
n1=1.46;// core refractive index
a=45/2;// max radius in um
y=0.85;// operating wavelength in um
NA=0.17;// numerical aperture
v=(2*3.14*a*NA)/y;//normalised frequency
M=v^2/2;// number of modes
printf("The normalised frequency =%f", v);
printf("\n The number of modes =%d", M);