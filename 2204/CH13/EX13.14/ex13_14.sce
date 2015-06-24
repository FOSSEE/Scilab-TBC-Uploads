// Exa 13.14
clc;
clear;
close;
// Given data
f = 1;// in kHz
f = f * 10^3;// in Hz
T = 1/f;// in s
T = T * 10^3;// in msec
T_d = T/2;// in msec
T_d = T_d * 10^-3;// in sec
C = 0.1;// in µF
C = C * 10^-6;// in F
R2 = T_d/(0.69*C);// in ohm
R2 = R2 * 10^-3;// in k ohm
disp(C*10^6,"The value of C in µF is : ")
disp(R2,"The value of R2 in kΩ is");
disp("The value of R1 will be 100 Ω +10 kΩ pot");
