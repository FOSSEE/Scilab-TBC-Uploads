//Example 8.6
//Determine the DFT of the following sequence
clc;
x=[1,1,2,2,3,3];
X=fft(x,-1);
disp(X,'X[k]=');