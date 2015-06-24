//Example 4.10
//Program to Compute the 4-point DFT of a Sequence x[n]=[0,1,2,3] 
//using DIT-DIF Algorithm.
clear;
clc ;
close ;
x = [0,1,2,3];
//FFT Computation
X = fft (x , -1);
disp(X,'X(z) = ');