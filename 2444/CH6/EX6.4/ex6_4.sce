// Exa 6.4
clc;
clear;
close;
format('v',6)
// Given data
A = 40;// open loop voltage gain
Beta = 10/100;// feedback ratio
Af = A/(1+(Beta*A));// voltage gain with feedback
disp(Af,"The voltage gain with feedback is");
Amount = 20*log10(abs( 1/(1+(Beta*A)) ));// Amount of feedback in dB 
disp(Amount,"Amount of feedback in dB is");
Loopgain = A*Beta;// unit less
disp(Loopgain,"The Loop gain is");
