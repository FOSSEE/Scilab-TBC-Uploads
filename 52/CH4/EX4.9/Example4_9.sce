//Example 4.9
//Program to find the 8-point DFT of a Sequence x[n]=1, 0<=n<=7 
//using DIT,DIF Algorithm.
clear;
clc ;
close ;
x = [1,1,1,1,1,1,1,1];
//FFT Computation
X = fft (x , -1);
disp(X,'X(z) = ');