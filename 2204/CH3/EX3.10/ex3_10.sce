// Exa 3.10
clc;
clear;
close;
// Given data
R_F = 1;// in M ohm
R_F = R_F * 10^6;// in ohm
Av= -30;
R1 = R_F/abs(Av);// in ohm
R1 = R1 * 10^-3;// in k ohm
disp(R_F*10^-6,"The value of R_F in MΩ is : ")
disp(R1,"The value of R1 in kΩ is");
