// Exa Misc. 6.10
clc;
clear;
close;
format('v',6)
// Given data
R_F = 60;// in ko hm
R1 = 20;// in k ohm
Vin1 = 2;// in V
Vin2 = 0.1;// in V
// The output voltage, by using super position theorm,
Vo = ((-R_F/R1)*Vin1) + ((1+(R_F/R1))*Vin2);// in V
disp(Vo,"The output voltage in V is");
