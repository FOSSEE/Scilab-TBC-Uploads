//Example 2.3. // error``
clc;
clear;
close;
//given data :
Kf_sin=1.11;//Form factor of sine wave
kf=1; // from interation Erms=Eav
R=Kf_sin/kf; // ratio of the two form factors
Pe=(R-1/1)*100;
disp(Pe,"the percentage error,Pe(%) = ")

