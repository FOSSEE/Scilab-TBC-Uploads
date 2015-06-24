//Exa 10.6
clc;
clear;
close;
//given data :
n=0.7;//refractive index
N=400;//in cm^-3
//Formula : n=sqrt(1-81*N/f^2)
f=sqrt(81*N/(1-n^2));//in KHz
disp(f,"Frequency of wave propagation in KHz : ");
//Note : Unit of Answer in the book is MHz. It is written by mistake. It is accurately calculated by scilab in KHz. 