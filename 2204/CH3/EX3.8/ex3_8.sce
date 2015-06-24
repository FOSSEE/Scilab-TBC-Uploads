// EXA 3.8
clc;
clear;
close;
// Given data
R1 = 5;// in  k ohm
R_F = 500;// in k ohm
V_in = 0.1;// in V
A_F = -(R_F/R1);
disp(A_F,"Voltage gain is");
R_i = R1;// in  k ohm
disp(R_i,"The Input resistance in kΩ is");
R_o = 0;// in ohm
disp(R_o,"Output resistance in Ω is");
V_out = A_F*V_in;// in V
disp(V_out,"Output voltage in V is");
I_in = V_in/(R1*10^3);// in A
I_in = I_in * 10^3;// in mA
disp(I_in,"Input current in mA is");
