// Exa 5.1
format('v',7);clc;clear;close;
// Given data
Rh = 1000;// in ohm
Rm = 50;// in ohm
V = 3;// in V
Ifsd = 1;// in mA
Ifsd = Ifsd * 10^-3;// in A
R1 = Rh - ( (Ifsd*Rm*Rh)/V );// in ohm
disp(R1,"The value of R1 in Ω is");
R2 = (Ifsd*Rm*Rh)/(V-(Ifsd*Rh));// in ohm
disp(R2,"The value of R2 in Ω is");
// Due to 5 % drop in battery voltage, the voltage becomes
V = V - (0.05*V);// in V
R2 = (Ifsd*Rm*Rh)/(V-(Ifsd*Rh));// in ohm
disp(R2,"Maximum value of R2 in Ω is");
