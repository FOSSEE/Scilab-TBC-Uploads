// Exa 5.2
clc;
clear;
close;
// given data 
fo=1;//in KHz
BETA=0.6;//unitless
disp("As choosing R1=1 Kohm")
// assume R1=1 Kohm and C=1 uF
R1=1;//in Kohm
C=1;//in uF
R=1/(2*fo*10^3*C*10^-6*log((1+BETA)/(1-BETA)));
disp(R,"Value of R in ohm is ; ");
//Answer in the book is wrong