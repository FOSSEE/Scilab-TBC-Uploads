// Exa 6.4
clc;
clear;
close;
// Given data
C = 0.05;// in µF
C = C * 10^-6;// in F
f = 1;// in kHz
f = f * 10^3;// in Hz
R = 1/(2*%pi*f*C);// in ohm
R = R * 10^-3;// in k ohm
disp(R,"The value of R1 and R2 in kΩ is");
R4 = 10;// in k ohm
disp(R4,"The value of R3 in kΩ is");
R3 = 2*R4;// in k ohm
disp(R3,"The value of R4 in kΩ is");
