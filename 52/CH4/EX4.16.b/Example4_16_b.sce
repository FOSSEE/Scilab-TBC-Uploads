//Example 4.16 (b)
//Program to Evaluate and Compare the 8-point DFT of the given Sequence 
//x2[n]=1, 0<=n<=6 using DIT-FFT Algorithm.
clear;
clc ;
close ;
x2=[1,1,1,1,1,1,1,0];
//FFT Computation
X2 = fft (x2 , -1);
disp(X2,'X2(k) = ');