// Exa 6.4
clc;
clear;
close;
format('v',5)
// Given data
V=250;// full scale voltage reading in V
Rm = 2;// in ohm
Rsh = 2;// in m ohm
Rsh = Rsh * 10^-3;// in ohm
R = 5000;// in ohm
Im = V/(Rm+R);// in A
Ish = (Im*Rm)/Rsh;// in A
// Current range of instrument
I = Im+Ish;// in A
disp(I,"The current range of instrument in A is");
