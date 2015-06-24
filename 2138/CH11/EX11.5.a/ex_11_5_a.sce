
//Example 11.5.a // current
clc;
clear;
close;
//given data :
f=50; // frequency in Hz
L=0.4; // inductance in H
V=220; // voltage in volts
pi=22/7;
XL=2*pi*f*L;
I=V/XL;
f1=25; // when frequency is halved
pi=22/7;
XL1=2*pi*f1*L;
I1=V/XL1;

disp(I,"current flowing,I(A) = ")
disp(I1,"current when frequency is halved,I(A) = ")
