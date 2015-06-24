//Example 6.13
clc;clear;close;
X=[1 2 3 4];
//Calculation of IDFT
x=dft(X,1);
x=clean(x);
disp(X,'DFT of the Sequence is X(k): ');
disp(x,'Sequence is x(n): ');
