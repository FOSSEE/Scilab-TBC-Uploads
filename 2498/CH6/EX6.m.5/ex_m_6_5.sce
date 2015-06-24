// Exa Misc. 6.5
clc;
clear;
close;
format('v',6)
// Given data
R1 = 2;// in k ohm
Rdas = 2;// in k ohm
R_Fmin = 2;// in k ohm
R_Fmax = 102;// in k ohm
// Ao = -R_F/R1;
// The minimum closed loop voltage gain 
Aomin = -R_Fmin/R1;
disp(Aomin,"The minimum closed loop voltage gain is");
//The maximum closed loop voltage gain 
Aomax = -R_Fmax/R1;
disp(Aomax,"The maximum closed loop voltage gain is");
