// Exa 5.8
format('v',7);clc;clear;close;
// Given data
// Rx/R2 = Rb/Ra = 1/1200;
R1 = 10;// in ohm
// Rx/R2= Rb/Ra= 1/1200
R2 = R1/0.5;// in ohm
Rx = R2/1200;//unknown resistance in ohm
disp(Rx,"The value of unknown resistance in Ω is");
