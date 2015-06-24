//Ex:5.4
clc;
clear;
close;
ds=0.020;// material dispersion
c=3*10^8;// the speed of light m/s
y=1.3;// wavelength in um
M=ds/(c*y);// material dispersion parameter in ps/nm/km
w=6;// spectral width in nm
l=1;// length in km
rm=w*l*M;// rms pulse broadening in ns/km
printf("The material dispersion parameter =%f ps/nm/km", M*10^12);
printf("\n The rms pulse broadening =%f ns/km",rm*10^9);