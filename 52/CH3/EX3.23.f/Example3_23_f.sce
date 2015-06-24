//Example 3.23 (f)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//N point DFT of x(n)=1, for n=even and 0, for n=odd
clc;
syms n k N ;
x=1;//x(2n)=1,for all n
X=symsum(x*exp(-%i*4*%pi*n*k/N),n,0,N/2-1);
disp(X,'X(k)=');