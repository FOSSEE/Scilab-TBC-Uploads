//Example 4.18
//Program to find the IDFT of the Sequence X[k]= [10,-2+j2,-2,-2-j2]
//using DIT Algorithm.
clear;
clc ;
close ;
j=sqrt(-1);
X = [10,-2+j*2,-2,-2-j*2];
//Inverse FFT Computation
x = fft (X , 1);
disp(x,'x(n) = ');