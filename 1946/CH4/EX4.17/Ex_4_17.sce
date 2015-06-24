// Example 4.17;/Pulse broadning due to material dispersion
clc;
clear;
close;
c=3*10^8;// speed of light in m/s
Dh=4*10^-2;//Material dispersion
L=30;//distance in Km
h=0.9;//WAVELENGTH IN micro METERS
Sh=45;// Spectral width in nano meter
Sm=(Sh*1*900*10^6*4*10^-2)/c;//Pulse broadning due to material dispersion in nano second per kilometer
disp(Sm,"Pulse broadning due to material dispersion in nano second per kilometer")
