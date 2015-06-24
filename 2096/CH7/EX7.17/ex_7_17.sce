//Example 7.17 // strain
clc;
clear;
close;
//given data :
n=4;
Rg=200; // in ohm
Rsh=100*10^3; // in ohm
Gf=2; // gauge factor
e=Rg/(n*Gf*(Rg+Rsh));
// case 1 -when the calibration switch is closed, the read out gives a reading of 140 division
D=e/140;
//case 2 - when the strain gauge is loaded, the strain
S=D*220*10^6;
disp(S,"the strain,S(microstrain) = ")
