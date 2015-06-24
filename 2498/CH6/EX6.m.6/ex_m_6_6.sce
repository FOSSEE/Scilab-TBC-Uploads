// Exa Misc. 6.6
clc;
clear;
close;
format('v',6)
// Given data
R1 = 10;// in k ohm
R_F = 0;
// Ao = (1+(R_F/R1));
// The minimum closed loop voltage gain 
Aomin = (1+(R_F/R1));
disp(Aomin,"The minimum closed loop voltage gain is");
R_F = 100;// in k ohm
// The maximum closed loop voltage gain 
Aomax = (1+(R_F/R1));
disp(Aomax,"The maximum closed loop voltage gain is");
