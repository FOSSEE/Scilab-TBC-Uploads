// Exa 5.5
clc;
clear;
close;
// Given data
R1 = 12;// in k ohm
R_F = 7;// in k ohm
R2 = 33;// in k ohm
R3 = R2;// in k ohm
R = R2;// in k ohm
R = R * 10^3;// in ohm
C1 = 0.002;// in µF
C1 = C1 * 10^-6;// in F
C2 = C1;// in F
C = C1;// in F
f_c = 1/(2*%pi*R*C);// in Hz
f_c = f_c * 10^-3;// in kHz
disp(f_c,"Cut off frequency in kHz is");
A_F = 1+(R_F/R1);
disp(A_F,"Pass band voltage gain is");
