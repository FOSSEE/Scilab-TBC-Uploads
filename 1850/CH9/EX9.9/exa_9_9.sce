// Exa 9.9
clc;
clear;
close;
//given data
C=.02;// in micro F
C=C*10^-6;// in  F
f=2;// frequency of the outpur trigger in kHz
f=f*10^3;// in Hz
T=1/f;// in seconds
// In a divide-by-5 circuit , n=5, so the pulse width, t_p= [0.2 + (n-1)]*T = [0.2 + (5-1)]*T = 4.2*T
t_p=4.2*T;// in soconds
// Formula t_p = 1.1*R_A*C
R_A= t_p/(1.1*C);// in ohm
R_A=R_A*10^-3;// in kohm
disp(R_A,"The value of R_A in k ohm");
