// Exa 3.1
clc;
clear;
close;
// Given data
A = 2*10^5;
R_F = 4.7*10^3;// in ohm
R1 = 470;// in ohm
K = R_F/(R1+R_F);
B = R1/(R1+R_F);
A_F = -(A*R_F)/(R1+R_F+(R1*A));
disp(A_F,"The closed loop voltage gain is");
R_in = 2;// in M ohm
R_in = R_in * 10^6;// in ohm
R_inf = R1 + ( (R_F*R_in)/(R_F+R_in + (A*R_in)) );// in ohm
disp(R_inf,"Input resistance in Ω is");
R_o = 75;// in ohm
R_of = R_o/(1+(A*B));// in ohm
R_of = R_of * 10^3;// in mΩ
disp(R_of,"Output Resistance in mΩ is");
f_o = 5;// Hz
f_f = f_o*(1+(A*B));// in Hz
f_f = f_f *10^-3;// in kHz
disp(f_f,"Band width with feedback in kHz is");

// Note: In the book, the unit of output resistant is wrong it will be mΩ (not MΩ)
