//Example 4.21
//Program to Compute the DFT of given Sequence 
//x[n]=[1,-1,-1,-1,1,1,1,-1] using DIT-FFT Algorithm.
clear;
clc ;
close ;
x = [1,-1,-1,-1,1,1,1,-1];
//FFT Computation
X = fft (x , -1);
disp(X,'X(z) = ');