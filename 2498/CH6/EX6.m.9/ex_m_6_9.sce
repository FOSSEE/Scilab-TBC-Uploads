// Exa Misc. 6.9
clc;
clear;
close;
format('v',6)
// Given data
R_F = 20;// in k ohm
R1 = 20;// in k ohm
R2 = 10;// in k ohm
Vin1 = 2;// in V
Vin2 = 1;// in V
// The output voltage, by using super position theorm
Vo = ((-R_F/R1)*Vin1) + ((1+(R_F/R1))*Vin2);
disp(Vo,"The output voltage is");
