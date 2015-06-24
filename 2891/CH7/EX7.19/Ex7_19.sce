//Exa 7.19
clc;
clear;
close;
// given :
f=6 // frequency in GHz
f=6*10^9 // frequency in Hz
c=3*10^8 // speed of light in m/s
lambda=c/f // wavelength in m
d=10 // aperture length in cm
d=10*10^-2 // aperture length in m
w=5 // aperture width in cm
w=5*10^-2 // aperture width in m
G_p=(4.5*w*d)/(lambda)^2 // power gain
G_p=10*log10(G_p) // power gain in dB
D=(7.5*w*d)/(lambda)^2 // Directivity
D=10*log10(D) // directivity in dB
disp(G_p,"power gain in dB:")
disp(D,"Directivity in dB:")
