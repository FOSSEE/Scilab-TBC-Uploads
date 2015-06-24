clc;
clear all;
//chapter 4
//page no 125
//example 4.7
//misprinted example number
pulse_width=2*10^-6;    //second
rise_time=10*10^-9;      //second
B=.5/pulse_width;       //in Hz
mprintf('(a) The aproximate bandwidth for coarse reproduction is B=%i  KHz\n',B*10^-3)
B=.5/rise_time;
mprintf(' (b) The aproximate bandwidth for fine reproduction is B=%i  MHz\n',B*10^-6)
