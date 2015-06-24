//Example 3.23 (d)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//N point DFT of x(n)=1, 0<=n<=N/2-1
clc;
syms n k N;
x=1;
X=symsum(x*exp(-%i*2*%pi*n*k/N),n,0,(N/2)-1);
disp(X,'X(k)=');