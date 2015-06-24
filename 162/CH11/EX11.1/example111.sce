//Example 11.1
//Find the DFT of x[n]=[1,2,3,4]
clc;
x=[1,2,3,4];
X=fft(x,-1);
disp(X,'X(k)=');