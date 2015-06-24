// Exa 6.5
format('v',6)
clc;
clear;
close;
// Given data
Vout = 36;// in V
Vs = 0.028;// in V
B = 1.2/100;
A = Vout/Vs;
Af = A/(1+(B*A));
Vo =Af*Vs;// in V
disp(Vo,"The output voltage in V is");
// 1+BA = 7 or
BA= 6;
Af= A/(1+BA);
Vin = Vout/Af;// in V
disp(Vin,"The input voltage in V is");
