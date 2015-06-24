//Example 11.6.b // current if frequency is halved 
clc;
clear;
close;
//given data :
f=50; // frequency in Hz
C=28*10^-6;// capacitor in Farad
V=250; // voltage in volts
pi=22/7;
f2=100;// when frequency is doubled
XC=1/(2*pi*f2*C);
I=V/XC;
disp(I,"current flowing when frequency is doubled ,I(A) = ")
