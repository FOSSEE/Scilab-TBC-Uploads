// Exa 11.8
clc;
clear;
close;
format('v',4)
// Given data
R4 = 220;// in k ohm
R4 = R4 * 10^3;// in ohm
R3 = R4;// in ohm
R = R4;// in ohm 
C1 = 250* 10^-12;// in F
C2 = C1;// in F
C = C1;// in F
f = 1/(2*%pi*R*C);// in Hz
f= f*10^-3;// in k Hz
disp(f,"The frequency of oscillation in kHz is");
