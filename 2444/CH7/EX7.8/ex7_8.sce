// Exa 7.8
clc;
clear;
close;
format('v',5)
// Given data
Rs = 5;// in k ohm
Rs =Rs * 10^3;// in ohm
Ls = 0.8;// in H
Cs = 0.08;// in pF
Cs = Cs * 10^-12;// in pF
C_P = 1;// in pF
C_P = C_P * 10^-12;// in F
f_s = 1/(2*%pi*(sqrt( Ls*Cs )));// in Hz
f_s = f_s * 10^-3;// in kHz
disp(f_s,"The series resonant frequency in kHz is");
f_p = (1/(2*%pi)) * (sqrt( (1+(Cs/C_P))/(Ls*Cs) ));// in Hz
f_p = f_p * 10^-3;// in kHz
disp(f_p,"The parallel resonant frequency in kHz is");
