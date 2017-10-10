//Graphical//
//Example 5.1.3
//Finding DFT and IDFT
clear;
clc;
close;
L = 4;  // Length of the sequence
N = 4;  // N -point DFT
x = [0,1,2,3];
//Computing DFT 
X = fft(x,-1)
//Computing IDFT
x_inv = real(fft(X,1))