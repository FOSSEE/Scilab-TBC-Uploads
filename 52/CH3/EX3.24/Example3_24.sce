//Example 3.24
//Program to Compute the DFT of the Sequence x[n]=(-1)^n, for N=4
clear;
clc ;
close ;
N=4;
n=0:1:N-1;
x=(-1)^n;
//DFT Computation
X = fft (x,-1);
//Display Sequence X[k] in command window
disp(X,"X[k]=");