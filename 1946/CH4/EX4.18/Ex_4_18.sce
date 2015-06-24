// Example 4.18;//Pulse broadning
clc;
clear;
close;
M=95;//dispersion parametr picosecond per nano meter per kilometer
L=1;//distance in Km
h=0.85;//WAVELENGTH IN MICRO METERS
Sh=0.0012*h*10^-6;// Spectral width in nano meter
Sm=(Sh*L*M)*10^6;//Pulse broadning due to material dispersion in nano second
disp(Sm,"Pulse broadning due to material dispersion in nano second per kilo meter")
