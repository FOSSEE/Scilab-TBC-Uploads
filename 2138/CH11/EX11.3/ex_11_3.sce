//Example 11.3 // current drawn
clc;
clear;
close;
//given data :
f=50; // frequency in Hz
L=0.2; // inductance in H
V=220; // voltage in volts
pi=22/7;
XL=2*pi*f*L;// in ohm
Z=XL;
I=V/Z;
disp(I,"current drawn,I(A) = ")
