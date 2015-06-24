//Example 11.5.b // current if frequency is halved
clc;
clear;
close;
//given data :
//given data :
f=50; // frequency in Hz
L=0.4; // inductance in H
V=220; // voltage in volts
f2=100; // when frequency is doubled
pi=22/7;
XL=2*pi*f2*L;
I=V/XL;
disp(I,"current when frequency is halved,I(A) = ")

