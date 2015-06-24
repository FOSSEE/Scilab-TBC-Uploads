//Example 3_34
clc;
clear;
close;
format('v',6);
//given data :
R=4;///ohm
L=0.5;//H
V=100;///V
f=50;//Hz
C=(1/2/%pi/f)^2/L*10^6;//micro F
disp(C,"(a) Capacitance at resonant Frequency(micro F)");
I0=V/R;//A
VC=I0/2/%pi/f/(C*10^-6);//V
disp(VC,"(b) Voltage across the capacitor at resonant(V)");
Q=VC/V;//Q-factor
disp(Q,"(b) Q-factor");
//Answer is not accurate in the book.
