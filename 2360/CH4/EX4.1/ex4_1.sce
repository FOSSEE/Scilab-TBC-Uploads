// Exa 4.1
format('v',7);clc;clear;close;
// Given data
Vi = 5.1;//input voltage in V
n = 8;// number of bit
Resolution = 2^n;
Resolution = Vi/(Resolution-1);// in V/LSB
Resolution= Resolution*10^3;// in mV/LSB
disp(Resolution,"The Resolution in mV/LSB is");
Resolution= Resolution*10^-3;// in V/LSB
Vi = 1.28;// in V
D = Vi/Resolution;//digital output in LSBs
DigitalOutput= dec2bin(round(D));// digital output in binary
disp(DigitalOutput,"The digital output in binary is :")
