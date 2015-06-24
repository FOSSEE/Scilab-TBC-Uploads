//Example 11.2
//Find the circular convolution 
clc;
x1=[3,1,3,1];
x2=[1,2,3,4];
X1=fft(x1,-1);
X2=fft(x2,-1);
X3=X1.*X2;
x3=fft(X3,1);
disp(x3,'x3(n)=x1(n)(N)x2(n)');