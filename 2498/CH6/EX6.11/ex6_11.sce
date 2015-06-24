// Exa 6.11
clc;
clear;
close;
format('v',6)
// Given data
Va = 0.2;// in V
Vb = -0.5;// in V
Vc = 0.8;// in V
Ra = 33;// in k ohm
Rb = 22;// in  k ohm
Rc = 11;// in  k ohm
R_F = 66;// in k ohm
// Using Superposition theorm, the output voltage
Vo = (-((R_F/Ra)*Va)) -(((R_F/Rb)*Vb)) -(((R_F/Rc)*Vc));// in V
disp(Vo,"The output voltage in V is");
