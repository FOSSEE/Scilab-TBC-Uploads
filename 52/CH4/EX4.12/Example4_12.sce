//Example 4.12
//Program to Compute the 8-point DFT of a Sequence 
//x[n]=[0.5,0.5,0.5,0.5,0,0,0,0] using radix-2 DIT Algorithm.
clear;
clc ;
close ;
x=[0.5,0.5,0.5,0.5,0,0,0,0];
//FFT Computation
X = fft (x , -1);
disp(X,'X(z) = ');