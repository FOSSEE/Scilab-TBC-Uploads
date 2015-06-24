
//Example 8.27
//Find the circular convolution of the following sequences
clc;
clear all;
x1=[1 -1 2 3];
x2=[0 1 2 3];
X1=fft(x1,-1);//To obtain fourier transform of x1, -1 is taken.
X2=fft(x2,-1);
X3=X1.*X2;
x3=fft(X3,1);//+1 to obtain inverse fourier transform.
disp(x3,'Circular convolution of the above two sequences is:');
