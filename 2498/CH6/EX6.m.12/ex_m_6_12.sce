// Exa Misc. 6.12
clc;
clear;
close;
format('v',6)
// Given data
R_F = 20;// in k ohm
R1 = 10;// in k ohm
R2 = 20;// in k ohm
Vin1 = 2;// in V
Vin2 = 2;// in V
Vin3 = 2;// in V
// The output voltage, by using super position theorm,
Vo = ((-R_F/R1)*Vin1) + (-Vin2*R_F/R2+Vin2) + ((R_F/(((R1*R2)/(R1+R2))))*Vin3);// in V
disp(Vo,"The voltage is appeared at the output terminal in V is");
