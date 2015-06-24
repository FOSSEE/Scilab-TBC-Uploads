//Example 8.25.1
//Find idft of the following
clc;
X=[1 1-%i*2 -1 1+%i*2];
x=fft(X,1);
disp(x);
//Example 8.25.2
//Find idft of the following
clc;
X=[1 0 1 0];
x=fft(X,1);
disp(x);
