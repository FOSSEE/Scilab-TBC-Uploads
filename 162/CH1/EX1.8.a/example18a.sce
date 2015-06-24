//Example 1.8a
//Check whether the given signal is periodic or not
clc;
n=-20:20;
x=cos(0.1*%pi*n);
plot2d3(n,x);
f=0.1*%pi/(2*%pi);//f is no. of cycles per sample
N=1/f;//N is no. of samples per cycle
disp('samples',N,'Figure shows that the signal is periodic with period equal to');