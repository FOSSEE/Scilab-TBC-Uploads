// Exa 10.5
clc;
clear;
close;
format('v',6)
// Given data
Af = 100;
Vi = 0.6;// in V
Vdesh_o = Af*Vi;// in V
Vi = 50;// in mV
Vi = Vi * 10^-3;// in V
A = Vdesh_o/Vi;
disp(A,"The value of A is");
// Af = A/( 1 +(A*Beta) );
Beta = (((A/Af)-1)/A)*100;// in %
Beta= (A-Af)/(Af*A/100);
Beta= Beta*100;// in %
disp(Beta,"The value of Beta in % is");


