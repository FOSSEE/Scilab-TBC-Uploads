//Example 8.2
clc;clear;close;
s=poly(0,'s');
z=poly(0,'z');
T=1;
Hs=1/(s^2+16);
Hz=horner(Hs,(1-1/z)/T);
disp('Using Backward difference formula for derivative:')
disp(Hs,'H(s)=');
disp(Hz,'H(z)=');