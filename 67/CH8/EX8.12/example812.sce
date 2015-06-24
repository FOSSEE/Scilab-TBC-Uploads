//Example 8.12
//For the given x[n] determine X[k] using FFT algorithm
clc;
x=[0,1,2,3,4,5,6,7];
X=fft(x,-1);
disp(X,'X[k]=');