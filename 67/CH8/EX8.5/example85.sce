//Example 8.5
//Find the DFT of the following sequence
clc;
x=[0.2,0.2,0.2];
n=-1:1;
X=fft(x,-1);
disp(X,'X[k]=');