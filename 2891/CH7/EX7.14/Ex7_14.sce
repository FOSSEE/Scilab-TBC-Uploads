// Exa7.14
clc;
clear;
close;
// given :
phi=5 // HPBW,half power beam width in Degrees
phi_not=2*phi // BWFN, null-to-null beam width in degrees
Lm=poly(0,'Lm') // defining Lm as lambda
// formula : phi=70*(Lm/D_a) // where Lm is wavelength in m and D_a is mouth diameter in m
D_a=(70*Lm)/phi
G_p=6.4*(D_a/Lm)^2
G_p=horner(G_p,1)
G_p=10*log10(G_p) // power gain in dB
disp(phi_not,"BWFN, null-to-null beam width in degrees:")
disp(G_p,"power gain in dB:")
