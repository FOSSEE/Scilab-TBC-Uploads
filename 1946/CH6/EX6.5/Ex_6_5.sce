// Example 6.5;//wavelength spacing and frequency spacing
clc;
clear;
close;
h=850*10^-9;//Wavelength in meter
n=3.7;//refractive index
L=500*10^-6;//LENGTH IN METER
C=3*10^8;//Speed of light in m/s
df=((C)/(2*n*L))*10^-9;//frequency sepration in Gega Hertz
dh=((h^2)/(2*n*L))*10^9;//wavelength spacing in mm
disp(df,"frequency spacing in Gega Hertz is ")
disp(dh," wavelength spacing in mm is")
