// Exa 4.16
clc;
clear;
close;
// Given data
C_F = 10;// in µF
C_F = C_F * 10^-6;// in F
R1 = 1/C_F;// in ohm
R1 = R1 * 10^-3;// in k ohm
disp(R1,"The value of R1 in kΩ is");
R2 = 1/(C_F*2);// in ohm
R2 = R2 * 10^-3;// in k ohm
disp(R2,"The value of R2 in kΩ is");
R3 = 1/(C_F*5);// in ohm
R3 = R3 * 10^-3;;// in k ohm
disp(R3,"The value of R3 in kΩ is");
