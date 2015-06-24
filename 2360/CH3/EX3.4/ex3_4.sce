// Exa 3.4
format('v',7);clc;clear;close;
// Given data
Rm = 100;//internal resistance in ohm
Im = 2;// in mA
Im = Im * 10^-3;// in A
I = 150;// in mA
I = I * 10^-3;// in A
Rsh = (Im*Rm)/(I-Im);//shunt resistance in ohm
disp(Rsh,"The value of shunt resistance in ohm is");

// Note: The calculation in the book is wrong.
