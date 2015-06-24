//Example 8.4
clc;clear;close;
s=poly(0,'s');
z=poly(0,'z');
T=1;
Hs=(s+0.2)/((s+0.2)^2+9);
Hz=horner(Hs,(1-1/z)/T);
disp('Using Impulse Invariant Technique:')
disp(Hs,'H(s)=');
disp(Hz,'H(z)=');