// Exa 4.4
format('v',7);clc;clear;close;
// Given data
t1 = 83.33;// in ms
V_R = 100;// in mV
Vi = 100;// in mV
fc = 12;//clock frequency in kHz
fc = fc* 10^3;// in Hz
Digitaloutput = round(fc*t1*(Vi/V_R)*10^-3);//digital output in counts 
disp(Digitaloutput,"The Digital output in counts is");
