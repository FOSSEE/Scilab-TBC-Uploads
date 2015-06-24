//Example 4.22
//Program to Compute the DFT of given Sequence 
//x[n]=2^n and N=8 using DIT-FFT Algorithm.
clear;
clc ;
close ;
N=8;
n=0:1:N-1;
x =2^n;
//FFT Computation
X = fft (x , -1);
disp(X,'X(z) = ');