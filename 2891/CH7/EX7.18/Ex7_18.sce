// Exa 7.18
clc;
clear;
close;
Lm=poly(0,'Lm') // defining Lm as lambda
d=8*Lm // where d is aperture length and Lm is wavelength
w=8*Lm // where w is aperture width
//formula : G_p=(4.5*w*d)/lambda^2
G_p=(4.5*w*d)/Lm^2 // power gain
G_p=horner(G_p,1) 
G_p=10*log10(G_p) // power gain in dB
disp(G_p,"power gain in dB:")
