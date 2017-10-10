//Example 1.14<c>
// Find wheather the following signal is periodic or not x3(n)=e^(i*7*pi*n)
clc;
n=-21:21;
x=exp(%i *7* %pi *n);
f=(7*%pi)/(2*%pi);
N=1/f;
disp(N,'the given signal is periodic');
