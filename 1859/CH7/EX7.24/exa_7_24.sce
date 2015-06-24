// Exa 7.24
clc;
clear;
close;
// Given data
C1= 208;// in pF
C1=C1*10^-12;// in F
Q1= 80;
C2= 184;// in pF
C2=C2*10^-12;// in F
Q2= 50;
f=165;// in kHz
f=f*10^3;// in Hz
omega= 2*%pi*f;// in radians/sec
// Part (i)
Rm= 1/omega*(1/(C2*Q2)-1/(C1*Q1));// in ohm
disp(Rm,"Resistive component of unknown impedence in ohm")
// Part(ii)
Xm= 1/omega*(1/C2-1/C1);// in ohm
disp(round(Xm),"Reactive component of unknown impedence in ohm")
