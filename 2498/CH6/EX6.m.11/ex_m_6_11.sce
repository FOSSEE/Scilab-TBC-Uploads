// Exa Misc. 6.11
clc;
clear;
close;
format('v',6)
// Given data
R1 = 10;// in k ohm
R2 = 20;// in k ohm
R3 = 10;// in k ohm
R_F = 20;// in k ohm
Vin1 = 2;// in V
Vin2 = 1;// in V
// The output voltage,
Vo = ((-R_F/R1)*Vin1) - ((R_F/R2)*Vin2);// in V
disp(Vo,"The output voltage in V is");
