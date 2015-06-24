// Example 3.6

clear; clc; close;

format('v',6);
// Given data
Ns=8;//stator teeth
Nr=6;//rotor teeth

//Calculations
Beta=(Ns-Nr)/Ns/Nr*360;//in degree
disp(Beta,"Step angle(degree) : ");
Resolution=360/Beta;//steps/revolution
disp(Resolution,"Resolution(steps/revolution) : ");
