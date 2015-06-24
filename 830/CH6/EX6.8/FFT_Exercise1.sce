//Graphical//
//Exercise 6.8
//Program to Calculate DFT using DIF-FFT algorithm
//x[n]= 1, 0<=n<=7
clear;
clc;
close;
x = [1,1,1,1,1,1,1,1];
X = fft(x,-1)
//Inverse FFT
x_inv = real(fft(X,1))
