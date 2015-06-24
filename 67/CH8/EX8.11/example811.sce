//Example 8.11
//For the given x[n] determine X[k] using FFT algorithm
clc;
x=[1,2,3,4,4,3,2,1];
X=fft(x,-1);
disp(X,'X[k]=');