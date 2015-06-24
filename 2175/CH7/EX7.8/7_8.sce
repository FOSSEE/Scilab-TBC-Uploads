clc;
B=0.9/12/0.15;
b=0.1/2;
A=15.14;
a=0.02
AF=A;
disp(AF,"A/F ratio is:");

%C=.15;
%O=.20;
%N=.65;
twp=B*%C+B*%O+B*%N+b;

C=B*%C/twp*100;
O=B*%O/twp*100;
N=B*%N/twp*100;
H=b/twp*100;

disp(H,N,O,C,"wet volumetric analysis is as follows:");
