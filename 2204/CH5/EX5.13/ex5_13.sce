// Exa 5.13
clc;
clear;
close;
// Given data
f_c = 1;// in kHz
f_c = f_c * 10^3;// in Hz
C = 0.1;// in µF
disp(C,"The value of C in µF is");
C = C * 10^-6;// in F
R = 1/(2*%pi*f_c*C);// in ohm
disp(R*10^-3,"The value of R in kΩ is");
Q1 = 1/0.765;
alpha1 = 1/Q1;
Q2 = 1/1.848;
alpha2 = 1/Q2;
A_F1 = 3-alpha1;
A_F2 = 3-alpha2;
R_i =10*10^3;// in ohm
R_F = (A_F1-1)*R_i;// in ohm
disp(R_F*10^-3,"For first stage the value of R_F in kΩ is");
R_i = 100*10^3;// ohm
R_F = (A_F2-1)*R_i;// in ohm
disp(R_F*10^-3,"For second stage the value of R_F in kΩ is");
