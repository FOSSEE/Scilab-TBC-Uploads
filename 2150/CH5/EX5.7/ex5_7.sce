// Exa 5.7
clc;
clear;
close;
// Given data
C = 220;// in µF
C = C * 10^-6;// in F
R1 = 10;// in kohm
R1 = R1 * 10^3;// in ohm
R2 = 2.2;// in kohm
R2 = R2 * 10^3;// in ohm
R_TH = (R1*R2)/(R1+R2);// in ohm
X_C = 0.1*R_TH;// in ohm
f = 1/(2*%pi*C*X_C);// in Hz
disp(f,"The lowest frequency in Hz is");

