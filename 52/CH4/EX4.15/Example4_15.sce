//Example 4.15
//Program to Compute the 4-point DFT of a Sequence x[n]=[1,0,0,1] 
//using DIF Algorithm.
clear;
clc ;
close ;
x=[1,0,0,1];
//FFT Computation
X =fft (x , -1);
disp(X,'X(z) = ');