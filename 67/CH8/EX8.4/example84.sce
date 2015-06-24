//Example 8.4
//Compute DFT of the following sequence 
clc;
x=[0.25,0.25,0.25];
X=fft(x,-1);
disp(X,'X[k]=');