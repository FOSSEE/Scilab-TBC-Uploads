//Example 8.10
clc;clear;close;
s=poly(0,'s');
z=poly(0,'z');
T=0.1;
Hs=1/(s+1)^2;
Hz=ss2tf(cls2dls(tf2ss(Hs),T));
disp('Using Bilinear Transformation:');
disp(Hs,'H(s)=');
disp(Hz,'H(z)=');