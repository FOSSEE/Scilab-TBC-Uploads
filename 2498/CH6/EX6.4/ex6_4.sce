// Exa 6.4
clc;
clear;
close;
format('v',6)
// Given data
R1 = 1;// in k ohm
R_F = 4.7;// in k ohm
//The closed loop voltage gain, Ao = Vo/Vin = -R_F/R1;
Ao = -R_F/R1;
disp(Ao,"The closed loop voltage gain is");
// The input impedance 
Ri = R1;// in k ohm
disp(Ri,"The input impedance in k ohm is");
