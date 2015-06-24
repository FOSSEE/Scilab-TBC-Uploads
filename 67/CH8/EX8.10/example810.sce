//Example 8.10
//Find the IDFT of the following sequence
clc;
i=sqrt(-1);
X=[3,2+i,1,2-i];
x=fft(X,1);
disp(x,'x[n]=');