//Example 1.67// percentage error
clc;
clear;
close;
//given data :
f=100; // in Hz
V1=250; // in volts
I1=0.05; // in A
L=1; // in H
R=V1/I1;
V=250; // in volts
XL=2*%pi*f*L;
Z=sqrt(R^2+XL^2);
Vr=(V1*R)/Z;
Ve=Vr-V;
Pe=abs(Ve/V)*100;
disp(Pe,"percentage error,Pe = ")
