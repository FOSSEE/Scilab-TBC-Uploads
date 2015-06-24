
//Example 8.28
//Find the linear and circular convolution
clc;
clear all;
x1=[1 2 3 4];
x2=[2 3 4 1];
//Linear convolution
z=convol(x1,x2);
disp(z,'The linear convolution is:');
//To obtain circular convolution
X1=fft(x1,-1);
X2=fft(x2,-1);
X3=X1.*X2;
x3=fft(X3,1);
disp(x3,'The circular convolution is:');
