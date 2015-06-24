//Example 8.8
clc;clear;close;
s=poly(0,'s');
z=poly(0,'z');
T=0.1;
Hs=2/(s+1)/(s+2);
Hz=ss2tf(cls2dls(tf2ss(Hs),T));
disp(Hs,'H(s)=');
disp(Hz,'H(z)=');