//Ex 6.8
clc;
clear;
close;
format('v',5);
Rf=570;//kohm
Ri=15;//kohm
A=Rf/Ri;//Gain of the circuit
Amin=29;//Minimum Gain requirement of RC phase shift oscillator
deltaA=(A-Amin)/Amin*100;//%(Exceeding Gain)
disp(deltaA,"Gain is exceeded by(%) ");
disp("It will cause distortion at output.");
