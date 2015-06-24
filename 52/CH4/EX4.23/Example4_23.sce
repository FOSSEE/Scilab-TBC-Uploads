//Example 4.23
//Program to Compute the DFT of given Sequence 
//x[n]=cos(n*pi/2), and N=4 using DIF-FFT Algorithm.
clear;
clc ;
close ;
N=4;
pi=22/7;
n=0:1:N-1;
x =cos(n*pi/2);
//FFT Computation
X = fft (x , -1);
disp(X,'X(z) = ');