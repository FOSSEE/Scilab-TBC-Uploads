//Example 15 // Energy
clc;
clear;
close;
//given data :
L=10*10^-3;// in H
C=20*10^-6;// in F
n=1/(2*%pi*sqrt(L*C));
V=10;//in V
U=(1/2)*C*V^2;
disp(n,"Frequency,n(cycles/s) = ")
disp(U,"Energy of oscillations,U(J) = ")
//answer of frequency is calculated wrong in textbook
