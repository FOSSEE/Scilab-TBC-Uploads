// Exa 10.21
clc;
clear;
close;
format('v',6)
// Given data
P = 4;
A = 4;
Turns = 100;
N = 600;// in rpm
Eg = 220;// in V
n = 2;// no of total conductors
Z = n*Turns;
// Eg = (N*P*phi*Z)/(60*A);
phi = (Eg*60*A)/(N*P*Z);// in Wb
disp(phi,"The useful flux per mole when armature is LAP connected in Wb is");
A = 2;
// Eg = (N*P*phi*Z)/(60*A);
phi = (Eg*60*A)/(N*P*Z);// in Wb
disp(phi,"The useful flux per mole when armature is WAVE connected in Wb is");
