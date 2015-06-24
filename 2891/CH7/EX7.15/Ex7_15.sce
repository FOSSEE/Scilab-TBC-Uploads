// Exa 7.15
clc;
clear;
close;
Lm=poly(0,'Lm')// defining Lm as lambda
D_a=8*Lm // where D_a is mouth diameter in m and Lm is wavelength in m
// formula : G_p=6.4*(D/lambda)^2
G_p=6.4*(D_a/Lm)^2 //power gain
G_p=horner(G_p,1)
G_p=10*log10(G_p) // power gain in dB  
disp(G_p,"power gain in dB:")
