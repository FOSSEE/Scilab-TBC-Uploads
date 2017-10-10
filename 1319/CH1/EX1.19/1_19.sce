// To determine bandwidth and half power frequencies

clc;
clear;

R=50;
f=750; // Frequency
w0=(2*%pi*f);
L=10*(10^-3);
I=1; // Maximum Current

Q=w0*L/R;

bw=f/Q;

a=(f^2); // let a = f1*f2
b= bw; // let b = f2-f1
c=sqrt((b^2)+(4*a)); // let c = f2+f1

f2=(b+c)/2;
f1=(c-b)/2;

printf('The bandwidth = %g Hz\n',bw)
printf('The half frequencies are f1 = %g Hz and f2 = %g Hz\n)',f1,f2)
