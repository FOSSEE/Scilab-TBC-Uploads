//Example 2.2. // error
clc;
clear;
close;
//given data :
m=150;
T=3;
Kf_sin=1.11;//Form factor of sine wave
//e=50*t
Erms=sqrt(1/T*integrate('(50*t)^2','t',0,T));
Eav=(1/T*integrate('(50*t)','t',0,T));
kf=Erms/Eav;
R=Kf_sin/kf; // ratio of the two form factors
Pe=(R-1/1)*100;
disp(Pe,"the percentage error,Pe(%) = ")

