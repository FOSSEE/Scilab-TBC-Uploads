// Exa 4.13
format('v',6)
clc;
clear;
close;
// Given data
I_o = 10;// in nA
// I = I_o * ((e^(v/(Eta * V_T))) - 1) as diode is reverse biased by large voltage
// e^(v/(Eta * V_T)<< 1, so neglecting it
I = I_o * (-1);// in nA
disp(I,"The Diode current in nA is  ");
