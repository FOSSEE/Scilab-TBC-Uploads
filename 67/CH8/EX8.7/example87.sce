//Example 8.7
//DFT of x[n]=a.^n
clc;
a=0.5;//Say for a=0.5
n=0:4;
x=a.^n;
X=fft(x,-1);
disp(X,'X[k]=');