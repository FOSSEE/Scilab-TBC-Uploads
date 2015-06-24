// Exa Misc. 6.1
clc;
clear;
close;
format('e',8)
// Given data
Vid = 1;// in mV
Vo = 120;// in mV
V_CM = 1;// in mV
Ad = Vo/Vid;
Vo = 20;// in µV
Vo = Vo * 10^-3;// in mV
A_CM = Vo/V_CM;
Vo = 120;// in mV
// The value of CMRR for the circuit 
CMRR = Vo/A_CM;
disp(CMRR,"The value of CMRR for the circuit is");
