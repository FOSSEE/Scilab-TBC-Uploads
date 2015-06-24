// Exa 4.10
clc;
clear;
close;
// Given data
R_F = 1.2;// in M ohm
R_F = R_F * 10^6;// in ohm
C_F = 10;// in nF
C_F = C_F * 10^-9;// in F
f_a = 1/(2*%pi*R_F*C_F);// in Hz
disp(f_a,"The safe frequency in Hz is");
R1 = 120;// in k ohm
R1 = R1 * 10^3;// in ohm
A = R_F/R1;
AindB= 20*log10(A);// in dB
disp(AindB,"The d.c gain in dB is");
f = 10;// in kHz
f = f * 10^3;// in Hz
A = (R_F/R1)/(sqrt( 1+ ((f/f_a)^2) ));
V_in_peak = 5;// in V
V_out_peak = V_in_peak*A;// in V
disp(V_out_peak*10^3,"The peak of output voltage in mV is");
