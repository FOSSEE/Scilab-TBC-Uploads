// Exa 11.13
clc;
clear;
close;
format('v',6)
// Given data
P = 4;
f = 50;// in Hz
Sfl = 4/100;
Ns = (120*f)/P;// in rpm
//The full load speed, Sfl = (Ns-Nfl)/Ns;
Nfl = Ns - (Sfl*Ns);// in rpm
disp(Nfl,"The full load speed in rpm is");
