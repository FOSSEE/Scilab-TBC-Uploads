//Example 8.14
clc;clear;close;
s=poly(0,'s');
fc=1;              //Assumed cut off frequency
Q=10;f0=2;        //Given data
Hs=1/(s^2+2*s+1);
l=fc*(s^2+f0^2)/(s*f0/Q);
Hs1=horner(Hs,l);
disp(Hs,'Low pass filter H(s)=');
disp(Hs1,'Band pass filterH(s)=');