// Example 4.6;/Pulse broadning due to material dispersion
clc;
clear;
close;
c=3*10^5;// speed of light in km/s
Dh=0.025;//Material dispersion
L=1;//distance in km
h=0.85;//Wavelength micro meters
Sh=20;// Spectral width in nano meter
M=Dh/(c*h*10^3);//
Sm=M*L*Sh//Pulse broadning due to material dispersion in nano second per kilometer
disp(Sm*10^9,"Pulse broadning due to material dispersion in nano second per kilometer")
