//Example 8.15
clc;clear;close;
s=poly(0,'s');
fc=1;              //Assumed cut off frequency of low pass filter
f0=5;             //Assumed cut off frequency of high pass filter
Hs=fc/(s+fc);
Hs1=horner(Hs,fc*f0/s);
disp(Hs,'H(s)=',fc,'Low pass filter with fc=');
disp(Hs1,'H(s)=',f0,'High pass filter with fc=');