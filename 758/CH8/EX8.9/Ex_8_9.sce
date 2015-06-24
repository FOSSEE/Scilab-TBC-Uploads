//Example 8.9
clc;clear;close;
s=poly(0,'s');
z=poly(0,'z');
T=0.1;
wr=0.25*%pi;        //Given cut off frequency
fc=2/T*tan(wr/2);
Hs=fc/(s+fc);
Hz=ss2tf(cls2dls(tf2ss(Hs),T));
disp('Using Bilinear Transformation:');
disp(Hs,'H(s)=');
disp(Hz,'H(z)=');