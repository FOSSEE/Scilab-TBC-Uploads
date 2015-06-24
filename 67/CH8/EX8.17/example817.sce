//Example 8.17
//Determine the DFT of the following sequence
clc;
x=[0,0,1,1,1,1,1,0,0,0];
X=fft(x,-1);
disp(X,'X[k]=');