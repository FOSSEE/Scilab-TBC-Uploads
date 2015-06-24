//Example 7.3
//Linear and circular convolution of two sequences
clc;
x1=[1,2,3,4];
x2=[3,1,4,2];
y1=convol(x1,x2);
disp(y1,'Linear convolution of the two sequences')
X1=fft(x1,-1);
X2=fft(x2,-1);
Y2=X1.*X2;
y2=fft(Y2,1);
disp(y2,'Circular convolution of the two sequences');