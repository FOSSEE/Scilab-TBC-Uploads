// Exa Misc. 6.2
clc;
clear;
close;
format('v',6)
// Given data
R1 = 10;// in k ohm
R_F = 1000;// in k ohm
// Vin/R1 = -Vo/R_F and Vo/Vin = Ao = -R_F/R1
Ao = abs(-R_F/R1);// in k ohm
disp(Ao,"The closed loop gain is");
Vin = 30;// in mV
Vin = Vin  * 10^-3;// in V
// The output voltage,
Vo =-Ao*Vin;// in V
disp(Vo,"The output voltage in V is");

// Note: The loop gain will be unit less.
