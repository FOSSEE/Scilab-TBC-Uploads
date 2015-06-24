//Example 7.2
//Convolution of two periodic signals
clc;
x1=[1,2,3,4];
x2=[3,1,1,3];
X1=fft(x1,-1);
X2=fft(x2,-1);
X3=X1.*X2;
x3=fft(X3,1);
disp(x3,'Convolution of the two given periodic signals is');