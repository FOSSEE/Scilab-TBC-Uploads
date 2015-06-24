//Example 6.8

clc;clear;close;
L=3;A=1/4;
x=A*ones(1,L);
//Calculation of DFT
X=dft(x,-1);
X=clean(X);
disp(x,'Given Sequence is x(n): ');
disp(X,'DFT of the Sequence is X(k): ');