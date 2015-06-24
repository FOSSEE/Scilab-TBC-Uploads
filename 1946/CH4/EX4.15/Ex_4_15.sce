// Example 4.15;//Pulse broadning
clc;
clear;
close;
M=20;//dispersion parametr picosecond per nano meter per kilometer
L=30;//distance in Km
h=1.5;//WAVELENGTH IN MICRO METERS
Sh=2;// Spectral width in nano meter
Sm=Sh*L*M;//Pulse broadning due to material dispersion in pico second
disp(Sm,"Pulse broadning due to material dispersion in pico second")
