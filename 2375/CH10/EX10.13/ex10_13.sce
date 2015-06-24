// Exa 10.13
clc;
clear;
close;
format('v',6)
// Given data
R1 = 20;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 20;// in k ohm
R2 = R2 * 10^3;// in ohm
h_ie = 2;// in k ohm
h_ie = h_ie * 10^3;// in ohm
R_L = 1;// in k ohm
R_L = R_L * 10^3;// in ohm
R_E = 100;// in ohm
h_fe = 80;
A = (-h_fe*R_L)/h_ie;
disp(A,"The value of A is");
Beta = R_E/R_L;
disp(Beta,"The value of Beta is");
Rif = h_ie + (1+h_fe)*R_E;// in ohm
Rif = Rif * 10^-3;// in k ohm
disp(Rif,"The value of R_if in k ohm is");
Af = (-h_fe*R_L)/(Rif*10^3);
disp(Af,"The value of Af is");
AB = A*Beta;
AB= real(20*log10(AB));// in dß
disp(AB,"The value of loopgain in dß is");
