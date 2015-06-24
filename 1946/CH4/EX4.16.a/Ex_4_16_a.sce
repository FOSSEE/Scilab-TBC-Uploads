// Example 4.16.a;/Material Dispersion Parameter
clc;
clear;
close;
c=2.998*10^5;// speed of light in km/s
Dh=0.025;//Material dispersion
L=30;//distance in Km
h=850;//WAVELENGTH IN Nano METERS
Sh=20;// Spectral width in nano meter
M=((Dh)/(c*h))*10^12;//dispersion parametr picosecond per nano meter per kilometer
disp(M,"dispersion parametr picosecond per nano meter per kilometer")
