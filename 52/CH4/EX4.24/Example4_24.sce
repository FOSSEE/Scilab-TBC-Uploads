//Example 4.24
//Program to Compute the 8-point DFT of given Sequence 
//x[n]=[0,1,2,3,4,5,6,7] using DIF, radix-2,FFT Algorithm.
clear;
clc ;
close ;
x = [0,1,2,3,4,5,6,7];
//FFT Computation
X = fft (x , -1);
disp(X,'X(z) = ');