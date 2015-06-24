//Example 4.4.a: power in case of parallel
clc;
clear;
close;
//given data :
w=100; // in watt
V=220; // voltage in volts
R1=V^2/w;
R=R1/2; // total resistance of the circuit
I=V/R;
W=I^2*R;
disp(W,"power in case of parallel,W(watt) = ")
