//Example 8.16
//Program to find DFT of sequence x=[1,1,1,1,1,1,1,0]
clc ;
x=[1,1,1,1,1,1,1,0];
X=fft(x,-1);
disp(X,'X[k]=');