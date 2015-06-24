//Graphical//
//Exercise 6.11
//Program to Calculate DFT using DIF-FFT algorithm
//x[n]= [1/2,1/2,1/2,1/2,0,0,0,0]
clear;
clc;
close;
x = [1/2,1/2,1/2,1/2,0,0,0,0];
X = fft(x,-1)
//Inverse FFT
x_inv = real(fft(X,1))
