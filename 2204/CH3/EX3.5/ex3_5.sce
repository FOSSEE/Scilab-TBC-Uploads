// Exa 3.5
clc;
clear;
close;
// Given data
A = 2*10^5;
R1 = 1;// in k ohm
R1 = R1  *10^3;// in ohm
R_F = 10;// in k ohm
R_F = R_F * 10^3;// in ohm
B = R1/(R1+R_F);
R_i = 2;// in M ohm
R_i = R_i  * 10^6;// in ohm
R_o = 75;// in ohm
A_F = A/(1+(A*B));
disp(A_F,"The closed loop gain is");
R_if = R_i * (1+(A*B));// in ohm
disp(R_if*10^-9,"Input resistance in GΩ is");
R_of = R_o/(1+(A*B));// in ohm
R_of = R_of * 10^3;// in mΩ
disp(R_of,"The output resistance in mΩis");
f_o = 5;// in Hz
f_f = f_o*(1+(A*B));// in Hz
f_f = f_f * 10^-3;// in kHz ... correction....
disp(f_f,"Bandwidth with feedback in kHz is");
