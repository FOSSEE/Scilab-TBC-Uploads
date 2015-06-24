//Example 4.8
//Program to find the DFT of a Sequence x[n]=[1,2,3,4,4,3,2,1] 
//using DIF Algorithm.
clear;
clc ;
close ;
x = [1,2,3,4,4,3,2,1];
//FFT Computation
X = fft (x , -1);
disp(X,'X(z) = ');
