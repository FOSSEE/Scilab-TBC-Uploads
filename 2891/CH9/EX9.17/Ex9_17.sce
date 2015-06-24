// Exa 9.17
clc;
clear;
close;
// given :
N=400 // electron density in electrons/cm^3
n=0.5 // refrective index
// formula : n=sqrt(1-(81*N/f^2)) 
f=sqrt(81*N/(1-n^2)) // frequency in kHz
disp(f,"frequency of propagating wave in kHz:")
