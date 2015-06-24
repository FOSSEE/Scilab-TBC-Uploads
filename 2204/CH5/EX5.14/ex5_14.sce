// Exa 5.14
clc;
clear;
close;
// Given data
f_c = 10;// in kHz
f_c = f_c *10^3;// in Hz
C = 0.0047;// in µF
C = C * 10^-6;// in F
R = 1/(2*%pi*f_c*C);// in ohm
R = R * 10^-3;// in k ohm
disp(R,"The value of R in kΩ is");
