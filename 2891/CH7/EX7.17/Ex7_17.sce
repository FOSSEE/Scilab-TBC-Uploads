//Exa 7.17
clc;
clear;
close;
// given :
f=6 // frequency in GHz
f=6*10^9 // frequency in Hz
c=3*10^8 // speed of light in m/s
lambda=c/f // wavelength in m
d=12 // aperture length in cm
d=12*10^-2 // aperture length in m
w=6 // aperture width in cm
w=6*10^-2 // aperture width in m
phi_E=56*(lambda/d) // half power beam width for aperture length d in Degrees
phi_H=67*(lambda/w) // half power beam width for aperture width w in Degrees
G_p=(4.5*w*d)/(lambda)^2 // power gain
G_p=10*log10(G_p) // power gain in dB
D=(7.5*w*d)/(lambda)^2 // Directivity
disp(phi_E,"half power beam width for aperture length d in Degrees:")
disp(phi_H,"half power beam width for aperture width w in Degrees:")
disp(G_p,"power gain in dB:")
disp(D,"Directivity:")
