//Example 11.4 // current flowing
clc;
clear;
close;
//given data :
f=50; // frequency in Hz
C=100*10^-6;// capacitor in Farad
V=210; // voltage in volts
pi=22/7;
XC=(1/(2*pi*f*C));
Z=XC;
I=V/Z;
disp(I,"current flowing,I(A) = ")
