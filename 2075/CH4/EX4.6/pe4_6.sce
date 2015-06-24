//example 4.6
clc; funcprot(0);
// Initialization of Variable
Ts=40;
P=2.92;
Qj=2.5;
Qc=2;
Tj=125;
//calculation
Qs=(Tj-Ts)/P-Qj-Qc;
disp(Qs,"thermal resistance in C/W:")
clear()
