//Example 4.16 (a)
//Program to Evaluate and Compare the 8-point DFT of the given Sequence 
//x1[n]=1, -3<=n<=3 using DIT-FFT Algorithm.
clear;
clc ;
close ;
x1=[1,1,1,1,0,1,1,1];
//FFT Computation
X1 = fft (x1 , -1);
disp(X1,'X1(k) = ');