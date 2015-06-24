// Exa 5.3
clc;
clear;
close;
// Given data
f_c = 2;// in kHz
f_c = f_c * 10^3;// in Hz
C = 0.01;// in µF
C = C * 10^-6;// in F
R = 1/(2*%pi*f_c*C);// in ohm
R = R * 10^-3;// in k ohm
R = 8.2;// in k ohm(Practical value)
A_F = 2.5;
R1 = (A_F*R)/1.5;// in k ohm
R_F = 1.5*R1;// in k ohm
disp(R1,"The value of R1 in kΩ is : ")
disp(R_F,"The value of R_F in kΩ is : ")
