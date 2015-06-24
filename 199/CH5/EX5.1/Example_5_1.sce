 // Chapter5
// Page.No-171, Figure.No-5.4
// Example_5_1
// Maximum gain
// Given
clear;clc;
fo=5; // Break freq of the op-amp in Hz
s=%s;
A=200000; // Gain of the op-amp at 0 Hz
H=syslin('c',(A*fo*2*%pi)/((fo*2*%pi)+s));
fmin=1;
fmax=100000;
bode(H,fmin,fmax);
Aol=40;
printf("\n Maximum gain is = %.f dB \n ",Aol); // From the graph
