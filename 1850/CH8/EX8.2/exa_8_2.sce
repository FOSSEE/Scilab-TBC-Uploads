// Exa 8.2
clc;
clear;
close;
//given data
A= 92;// in dB
A= 10^(92/20);
V_CC= 15;// in volt
Vout= 30;// in volt
InputOffsetVoltage= 0;// in V
InputVoltage= Vout/A;// in V
disp(InputVoltage*10^3,"Input Voltage in mV")
