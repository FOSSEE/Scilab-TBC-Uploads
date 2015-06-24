// Exa 5.16 printed as 5.13
clc;
clear;
close;
// Given data
R1 = 27;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = R1;// in ohm
R3 = R2 ;// in ohm
R = R1;// in ohm
R_L = 10;// in k ohm
R_F = 16;// in k ohm
C2 = 0.005;// in µF
C2 = C2 * 10^-6;// in F
C3 = C2;// in F
C = C3;// in F
f_c = 1/(2*%pi*R*C);// in Hz
f_c = f_c * 10^-3;// in kHz
R1= R1*10^-3;// in kohm
disp(f_c,"Cut off frequency in kHz is");
A_F = 1+(R_F/R1);
disp(A_F,"Voltage gain is");
