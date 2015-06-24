// Exa Misc. 6.7
clc;
clear;
close;
format('v',7)
// Given data
R1 = 220;// in ohm
R_F = 47;// in k ohm
R_F =R_F * 10^3;// in ohm
// The closed loop voltage for switch position-1
Ao = -R_F/R1;
disp(Ao,"The closed loop voltage for switch position-1 is");
R_F = 18;// in k ohm
R_F = R_F * 10^3;// in ohm
// The closed loop voltage for switch position-2
Ao = -R_F/R1;
disp(Ao,"The closed loop voltage for switch position-2 is");
R_F = 39;// in k ohm
R_F = R_F * 10^3;// in ohm
// The closed loop voltage for switch position-3
Ao = -R_F/R1;
disp(Ao,"The closed loop voltage for switch position-3 is");
