// Exa 6.6
clc;
clear;
close;
format('v',6)
// Given data
R1 = 20;// in k ohm
R_F = 300;// in k ohm
Vin = 1.25;// in V
// Ao = Vo/Vin = -R_F/R1;
Ao = -R_F/R1;
// Output voltage,
Vo = Ao*Vin;// in V
disp(Vo,"The output voltage in V is");
