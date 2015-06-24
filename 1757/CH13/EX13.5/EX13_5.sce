//Example13.5  // to calculate the frequency of a wein bridge oscillator
clc;
clear;
close;
C = 0.05*10^-6 ;  // F
R = 20*10^3 ;  // ohm
R1 = 10*10^3 ;  // ohm
R2 = 20*10^3 ;  //ohm

// the frequency of wien bridge oscillator f
f = 1/(2*%pi*R*C);
disp('the frequency of wien bridge oscillator f is = '+string(f)+ ' Hz ');


