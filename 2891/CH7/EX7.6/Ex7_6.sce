//Exa 7.6
clc;
clear;
close;
// given :
b=0.65 // illumination efficiency
D_a=6 // mouth diameter of paraboloid reflector in m
c=3*10^8 // speed of light in m/s
f=10 // frequency in GHz
f=10*10^9 // frequency in Hz
lambda=c/f // wavelength in m
A=%pi*(D_a)^2/4 // Actual area in m^2
A_c=0.65*A // capture area in m^2
D=6.4*(D_a/lambda)^2 // directivity
D=10*log10(D) // directivity in dB
phi=70*(lambda/D_a) // half power beam width in degrees
phi_not=2*phi // null-to-null main beam width in degrees
disp(D,"directivity in dB:")
disp(phi,"half power beam width in degrees:")
disp(phi_not,"null-to-null main beam width in degrees:")
disp(A_c,"capture area in m^2:")
