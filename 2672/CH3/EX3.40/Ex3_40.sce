//Example 3_40
clc;
clear;
close;
format('v',7);
//given data :
R=10;//ohm
L=100;//mH
C=20;//micro F
V=100;//V
f0=1/2/%pi*sqrt(1/(L/1000*C*10^-6)-R^2/(L/1000)^2);//Hz
disp(f0,"Resonant frequency(Hz)");
Q=2*%pi*f0*L/1000/R;//Q-factor
disp(Q,"Q-factor");
Z0=L/1000/(C*10^-6)/R;//ohm
disp(Z0,"Dynamic Impedence(ohm)");
I0=V/Z0;//A
disp(I0,"Current at resonance(A)");
//Answer is not accurate in the book.
