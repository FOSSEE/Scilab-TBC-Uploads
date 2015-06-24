// Exa Misc. 6.13
clc;
clear;
close;
format('v',6)
// Given data
R1 = 20;// in k ohm
R3 = 10;// in k ohm
R2 = R3;// in k ohm
R_F = 20;// in k ohm
Vin1 = 2;// in V
Vin2 = 2.1;// in V
// The input voltage at non-inverting terminal,
V_A = (R2*Vin2)/R1;// in V
// The output voltage, by using super position theorm,
Vo = ((-R_F/R1)*Vin1) + ((1+(R_F/R1))*(R1/(R2+R3))*V_A);// in V
disp(Vo,"The output voltage in V is");
