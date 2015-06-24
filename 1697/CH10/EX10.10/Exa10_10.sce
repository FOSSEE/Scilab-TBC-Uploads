//Exa 10.10
clc;
clear;
close;
//given data :
n=0.6;//refractive index
N=4.23*10^4;//in m^-3
//Formula : n=sqrt(1-81*N/f^2)
f=sqrt(81*N/(1-n^2));//in Hz
disp(f/1000,"Frequency of wave propagation in KHz : ");