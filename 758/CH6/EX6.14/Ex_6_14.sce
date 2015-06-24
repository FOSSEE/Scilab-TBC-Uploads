//Example 6.14
clc;clear;close;
X=[3 2+%i 1 2-%i];
//Calculation of IDFT
x=dft(X,1);
x=clean(x);
disp(X,'DFT of the Sequence is X(k): ');
disp(x,'Sequence is x(n): ');
