// Exa 12.1
clc;
clear;
close;
// Given data
n = 8;
Resolution = 2^n;
disp(Resolution,"The resolution is");
disp("That is, the output voltage can have "+string(Resolution)+" different values including zero")
V_OFS = 2.55;// in V
Resolution= V_OFS/(2^n - 1)*10^3;
disp("Resolution is : "+string(Resolution)+" mV/1LSB")
disp("That is, an input change of 1 LSB causes the output to change by "+string(Resolution)+" mV")
