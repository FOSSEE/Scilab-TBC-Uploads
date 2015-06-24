// Exa 10.2
clc;
clear;
close;
format('v',6)
// Given data
P = 8;
N = 1200;// in rpm
phi = 25;// in mWb
phi = phi * 10^-3;// in Wb
Eg = 440;// in V
A = P;
// Eg = (N*P*phi*Z)/(60*A);
Z = (Eg*60*A)/(phi*N*P);// in conductors
disp(Z,"The numbers of conductors when armature is lap wound");
A = 2;
// Eg = (N*P*phi*Z)/(60*A);
Z = (Eg*60*A)/(phi*N*P);// in conductors
disp(Z,"The numbers of conductors when armature is wave wound ");
