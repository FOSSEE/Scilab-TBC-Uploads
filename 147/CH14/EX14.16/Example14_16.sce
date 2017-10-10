//Armature resistance Ra, Field resistance Rg, Speed of generator N
//Rating of Generator and Motor Pr,V
close();
clear;
clc;
Pr = 10000;//W
V = 250;//V
Ra = 0.1;//ohm
Rf = 250;
N = 800;
//As generator
If = V/Rf;
Il = Pr/V;
Ia = If+Il;
Eg = V + Ia*Ra;
//As a motor
Il = Pr/V;
If = V/Rf;
Ia = Il - If;
Em = V - Ia*Ra;
ng = Em/Eg*N;
mprintf('Speed of the motor = %0.1f rpm',ng);

