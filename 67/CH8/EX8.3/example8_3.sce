//Example 8.3
//Compute DFT of x(n)={1,1,0,0} and IDFT of y(n)={1,0,1,0}
clc;
x=[1,1,0,0];
Y=[1,0,1,0];
X=fft(x,-1);
y=fft(Y,1);