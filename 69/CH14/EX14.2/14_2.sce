clear; clc; close;

Beta = -0.1;
dA_A = 20;
A = -1000;

dAf_Af = abs(1/(Beta*A))*abs((dA_A));
disp(dAf_Af,'Percentage Change in gain of feedback amplifier = ');
