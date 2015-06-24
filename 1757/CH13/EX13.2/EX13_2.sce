//Example13.2  // to determine the oscillaton frequency of the phase shift oscillator
clc;
clear;
close;
C = 0.05 ;  // uF
R = 2.5 ;  // K ohm

// the oscillator frequency of practical RC phase shift oscillator f
f = 1/(2*%pi*(sqrt(6)*(R*C)));
disp('the oscillator frequency of practical RC phase shift oscillator f is = '+string(f)+ ' KHz ');
