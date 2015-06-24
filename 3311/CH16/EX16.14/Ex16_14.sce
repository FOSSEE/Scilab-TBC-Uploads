// chapter 16
// example 16.14
// Determine supply frequency
// page-1041
clear;
clc;
// given
C=5.3; // in uF
V=600; // in V
I=100; // in A
// calculate
C=C*1E-6; // changing unit from uF to F
Xc=V/I;
// since Xc=1/(2*%pi*f*C), therefore we get
f=1/(2*%pi*C*Xc); // calculation of supply frequency
printf("\nThe supply frequency is \t f=%.f kHz",f*1E-3);