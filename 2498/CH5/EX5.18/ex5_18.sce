// Exa 5.18
clc;
clear;
close;
format('v',6)
// Given data
Vo = 36;// in V
Vi = 0.028;// in V
A = Vo/Vi;
Vf = 1.2;
Vo = 100;
Beta = Vf/Vo;
// Gain with feedback
Af = A/(1+(A*Beta));
Vs = Vi;// in V
// Output voltage
Vo =Af*Vs;// in V
disp(Vo,"The output voltage in V is");
//Df =D/(1+(A*Beta));
DbyDf = 7/1;
ABeta = (DbyDf)-1;
Af =A/(1+(ABeta));
Vo = 36;// in V
// The input voltage,
Vs =Vo/Af;
disp(Vs,"The input voltage is");
