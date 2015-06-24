// Example 4.7//Pulse broadning due to material dispersion
clc;
clear;
close;
c=3*10^5;// speed of light in km/s
Dh=0.03;//Material dispersion
L=1;//distance in km
h=0.85;//Wavelength in micro meters
Sh=0.0012*h;// Spectral width in nano meter
M=Dh/(c*h*10^3);//
Sm=M*L*Sh//Pulse broadning due to material dispersion in nano second per kilometer
disp(Sm*10^12,"Pulse broadning due to material dispersion in nano second per kilometer")
