// Exa 7.13
clc;
clear;
close;
format('v',5)
// Given data
f_o = 10;// in kHz
f_o = f_o * 10^3;// in Hz
R = 200;// in k ohm
R = R * 10^3;// in ohm
C = 1/(2*%pi*f_o*R);// in F
C=C*10^12;// in pF
disp(C,"The value of C in pF is");
R4 = R;// in ohm
R4= R4*10^-3;// in k ohm
disp(R4,"The value of R4 in k ohm is");
R3 = R4*2;// in k ohm
disp(R3,"The value of R3 in k ohm is");
