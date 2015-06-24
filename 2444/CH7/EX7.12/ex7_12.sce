// Exa 7.12
clc;
clear;
close;
format('v',6)
// Given data
C1 = 0.016;// in µF
C1 = C1 * 10^-6;// in F
C2 = C1;// in F
C3 = C1;// in F
C = C1;// in F
//f_o = 1/(2*%pi*R*C*sqrt(10));
f_o = 1;// in kHz
f_o = f_o * 10^3;// in Hz
R = 1/(2*%pi*f_o*C*sqrt(10));// in  ohm
disp(R,"The value of resiatnce in ohm is");
disp("Standard value : 3.3 kohm")
