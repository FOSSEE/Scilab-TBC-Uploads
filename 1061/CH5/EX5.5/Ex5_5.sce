//Ex:5.5
clc;
clear;
close;
wr=0.0014;// relative spectral width in nm
y=1.3*10^-6;// wavelength in m
w=wr*y;// spectral width in nm
ds=0.020;// material dispersion
c=3*10^8;// the speed of light in m/s
M=ds/(c*y);// material dispersion parameter in ps/nm/km
l=1;// length in km
rm=w*l*M;// rms pulse broadening in ns/km
printf("The rms pulse broadening =%f ns/km",rm*10^9*10^3);