// Exa 5.2
clc;
clear;
close;
// Given data
R1 = 10;// in k ohm
R_F = R1;// in k ohm
disp(R_F,"The value of R_F in kΩ is");
C = 0.001;// in µF
C = C  *10^-6;// in F
f_c = 10;// in kHz
f_c = f_c * 10^3;// in Hz
R = 1/(2*%pi*f_c*C);// in ohm
R  = R * 10^-3;// in k ohm
disp(R,"The value of R in kΩ is");
