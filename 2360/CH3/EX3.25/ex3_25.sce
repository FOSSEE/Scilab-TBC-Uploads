// Exa 3.25
format('v',7);clc;clear;close;
// Given data
Vm = 10;// in mV
Vm = Vm * 10^-3;// in V
Rm = 1;// in k ohm
Rm = Rm * 10^3;// in ohm
Im = Vm/Rm;// in A
// Part (i) : For the range of 100 mV
Vrange = 100;// in mV
Vrange = Vrange * 10^-3;// in V
Rs = (Vrange/Im) - Rm;// in ohm
Rs= Rs*10^-3;// in kohm
disp("Part (i) For the range of 100 mV")
// Part (ii) : For the range of 1 V
disp(Rs,"The value of Rs in kΩ is");
Vrange = 1;// in V
Rs = (Vrange/Im) - Rm;// in ohm
Rs= Rs*10^-3;// in kohm
disp("Part (i) For the range of 1V")
disp(Rs,"The value of Rs in kΩ is");
