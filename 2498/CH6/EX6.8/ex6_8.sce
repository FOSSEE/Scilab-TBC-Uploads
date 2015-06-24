// Exa 6.8
clc;
clear;
close;
format('v',6)
// Given data
R1 = 15;// in k ohm
R_F = 450;// in k ohm
Vin = -0.25;// in V
// Vo = Ao*Vin
Vo = (1+R_F/R1)*abs(Vin);// in V    (on putting, Ao = 1+(R_F/R1))
disp(Vo,"The output voltage in V is");
