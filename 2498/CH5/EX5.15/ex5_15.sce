// Exa 5.15
clc;
clear;
close;
format('v',6)
// Given data
Af = 100;
Vi = 0.6;// in V
Vo =Af*Vi;// in V
Vi = 50;// in mV
Vi = Vi * 10^-3;// in V
// Internal gain of amplifier,
A = Vo/Vi;
disp(A,"The value of A is : ");
B= ((A/Af)-1)/A;
disp(B,"The value of B is");
