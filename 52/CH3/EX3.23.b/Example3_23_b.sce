//Example 3.23 (b)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//N point DFT of delta(n-no)
clc;
syms n k N no;
x=1;
X=symsum(x*exp(-%i*2*%pi*n*k/N),n,-no,-no);
disp(X,'X(k)=');