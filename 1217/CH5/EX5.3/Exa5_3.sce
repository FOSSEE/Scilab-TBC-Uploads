// Exa 5.3
clc;
clear;
close;
// given data 
BETA=0.41;//unitless
R=2.7;//in Kohm
C=0.1;//in uF
fo=1/(2*R*C*log((1+BETA)/(1-BETA)));//in KHz
disp(fo,"Output signal frequency in Khz is ; ")