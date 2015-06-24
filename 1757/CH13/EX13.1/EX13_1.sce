//Example13.1  // to design RC phase shift oscillator for the oscillation frequency f = 1 KHz
clc;
clear;
close;
f =1 ; // KHz
C = 0.01 ; // uF

// The oscillation frequency of practical RC phase shift oscillator is defined as
//w = 1/(sqrt(6)*R*C);

// gain of practical RC phase shift oscillator is
//A = R1/R = 29                                           equation 1
// the frequency selective element resistor
//R = 1/(sqrt(6)*w*C);
R = 1/(sqrt(6)*2*%pi*f*C);
disp('the frequency selective element resistor is = '+string(R)+ ' K ohm ');

// The feedback resistance
R1 = 29*R ;                                                // from equation 1
disp('The feedback resistance is = '+string(R1)+ ' K ohm');
