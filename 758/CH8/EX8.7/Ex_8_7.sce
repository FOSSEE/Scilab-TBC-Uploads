//Example 8.7
clc;clear;close;
s=poly(0,'s');
z=poly(0,'z');
T=0.276;
Hs=(s+0.1)/((s+0.1)^2+9);
Hz=ss2tf(cls2dls(tf2ss(Hs),T));
disp('Using Bilinear Transformation:');
disp(Hs,'H(s)=');
disp(Hz,'H(z)=');