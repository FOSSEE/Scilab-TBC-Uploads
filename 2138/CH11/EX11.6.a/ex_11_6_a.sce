//Example 11.6.a // current
clc;
clear;
close;
//given data :
f=50; // frequency in Hz
C=28*10^-6;// capacitor in Farad
V=250; // voltage in volts
pi=22/7;
XC=1/(2*pi*f*C);
I1=V/XC;
f=50; // frequency in Hz
C=28*10^-6;// capacitor in Farad
V=250; // voltage in volts
pi=22/7;
f1=25;// when frequency is halved
XC=1/(2*pi*f1*C);
I2=V/XC;
disp(I1,"current flowing,I(A) = ")
disp(I2,"current flowing when frequency is halved,I(A) = ")
