//Example 3_37
clc;
clear;
close;
format('v',5);
//given data :
R=10;//ohm
L=20;//mH
C=10;//micro F
V=50;//V
f0=1/2/%pi/sqrt(L/1000*C/10^6);//Hz
disp(f0,"Resonance frequency(Hz)");
I0=V/R;//A
XL=2*%pi*f0*L/1000;//ohm
VL=I0*XL;//V
disp(VL,"Voltage across inductance(V)");
VR=I0*R;//V
disp(VR,"Voltage across Resistance(V)");
XC=1/2/%pi/f0/(C*10^-6);//ohm
VC=I0*XC;//V
disp(VC,"Voltage across Capacitance(V)");
Q=VL/V;//Q-factor
disp(Q,"Q-factor");
//Answer is not accurate in the book.
