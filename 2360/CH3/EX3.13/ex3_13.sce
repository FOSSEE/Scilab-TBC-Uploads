// Exa 3.13
format('v',7);clc;clear;close;
// Given data
Rs = 25;//resistance in k ohm
Rs = Rs * 10^3;// in ohm
Rm = 1;//meter resistance in k ohm
Rm = Rm * 10^3;// in k ohm
V = 100;//voltage in V
// Rs = (S*V) - Rm;
S = (Rs+Rm)/V;//sensitivity in ohm/V
disp("For meter A:  The value of S is : "+string(S)+" Ω/V")
Rs = 150;// in  k ohm
Rs = Rs * 10^3;// in ohm
V = 1000;// in V
// Rs = (S*V) - Rm;
S = (Rs+Rm)/V;// in ohm/V meter B
disp("For meter B:  The value of S is : "+string(S)+" Ω/V")
disp("The meter A is more sensitive than meter B")
