// Exa 5.4
clc;
clear;
close;
// Given data
f_c = 1;// in kHz
f_c = f_c * 10^3;// in Hz
C = 0.005*10^-6;// in F
R3 = 1/(2*%pi*f_c*C);// in ohm
R3 = R3 * 10^-3;// in k ohm
R2 = R3;// in k ohm
R1 = 33;// in k ohm (standard value)
R_F = 0.586*R1;// in k ohm
disp(R1,"The value of R1 in kΩ is : ")
disp(R3,"The value of R2 and R3 in kΩ is");
disp(R_F,"The value of R_F in kΩ is : ")
disp(C*10^6,"The value of C2 and C3 in µF is :")
