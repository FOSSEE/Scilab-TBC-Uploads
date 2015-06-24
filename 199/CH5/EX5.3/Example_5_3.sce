 // Chapter5
// Page.No-83, Figure.No-3.7
// Example_5_3
// Stability of voltage follower
// Given
clear;clc;
fo=5; // Break freq of the op-amp in Hz
s=%s;
A=200000; // Gain of the op-amp at 0 Hz
H=syslin('c',(A*fo*2*%pi)/((fo*2*%pi)+s));
fmin=10;
fmax=1000000;
bode(H,fmin,fmax);
Aol=0;
printf("\n Magnitude at which voltage follower is stable is = %.f dB \n ",Aol); // From the graph
