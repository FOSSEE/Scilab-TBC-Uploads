//Example 4.4.b: power in case of series
clc;
clear;
close;
//given data :
w=100; // in watt
V=220; // voltage in volts
R1=V^2/w;
R2=V^2/w;
R=R1+R2; // total resistance of the circuit
I=V/R;
W=I^2*R;
disp(W,"power in case of series,W(watt) = ")
