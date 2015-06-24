// Exa 6.13
clc;
clear;
close;
format('v',6)
// Given data
Va = 6;// in V
Vb = -3;// in V
Vc = -0.75;// in V
Ra = 10;// in k ohm
Rb = 2.5;// in k ohm
Rc = 4;// in k ohm
R_F = 10;// in k ohm
// The output voltage 
Vo = (-((R_F/Ra)*Va)) -(((R_F/Rb)*Vb)) -(((R_F/Rc)*Vc));// in V
disp(Vo,"The output voltage in V is");
