//Example 4.19
//Program to Compute the FFT of given Sequence x[n]=[1,0,0,0,0,0,0,0].
clear;
clc ;
close ;
x = [1,0,0,0,0,0,0,0];
//FFT Computation
X = fft (x , -1);
disp(X,'X(z) = ');