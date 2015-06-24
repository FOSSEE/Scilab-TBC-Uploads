//to find no of 100 rsding exceed 30mm

clc;
x=30-26.3;    //mean value 26.3
r=2.5;
o=r/.6745;
t=x/o;
A=.3413;//area under gaussian curve corresponding to t
n=2*A*100;
nn=100-floor(n);
disp(nn/2,'no of readings exceed');