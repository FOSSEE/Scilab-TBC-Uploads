//Example 8.8
//Compute 4-point DFT of the sequence x[n]=cos(n*pi/4)
clc;
n=0:3;
pi=22/7;
x=cos(n*pi/4);
X=fft(x,-1);
disp(X,'X[k]=');