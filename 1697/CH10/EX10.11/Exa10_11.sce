//Exa 10.11
clc;
clear;
close;
//given data :
n=0.8;//refractive index
N=500;//in cm^-3
//Formula : n=sqrt(1-81*N/f^2)
f=sqrt(81*N/(1-n^2));//in KHz
disp(f,"Frequency of wave propagation in KHz : ");