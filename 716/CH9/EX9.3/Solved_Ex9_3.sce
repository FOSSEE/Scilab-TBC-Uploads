//compute circular convolution of x1(n)={2 1 2 1} & x2(n)={1 2 3 4}
clc;
clear;
n=0:1:3;//for four point DFT
x1=[1 2 3 4];
disp(x1,'Given signal=>    x1(n)=');
X1=dft(x1,-1);
disp(X1,'four point DFT of x(n)=>');
disp(abs(X1),'magnitude of four point DFT x(n)=>');
disp(atan(imag(X1),real(X1)),'phase of four point DFT x(n)=>');

x2=[2 1 2 1];
disp(x2,'Given signal=>    x1(n)=');
X2=dft(x2,-1);
disp(X2,'four point DFT of x(n)=>');
disp(abs(X2),'magnitude of four point DFT x(n)=>');
disp(atan(imag(X2),real(X2)),'phase of four point DFT x(n)=>');

X3=X1.*X2;
x3=dft(X3,1);
disp(x3,'by circular convolution x3(n)=>');