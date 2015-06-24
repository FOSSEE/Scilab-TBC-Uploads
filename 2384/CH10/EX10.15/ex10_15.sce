// Exa 10.15
clc;
clear;
close;
format('v',6)
// Given data
P = 8;
phi = 0.1;// in Wb
Z = 400;
N =300;// in rpm
Eg = (N*phi*Z)/(60);// in V (A = p)
disp(Eg,"The emf when lap is connected in V is");
// For A=2, connected armature
A = 2;
Eg = (N*phi*P*Z)/(60*A);// in V
disp(Eg,"The emf when wave is connected in V is");
