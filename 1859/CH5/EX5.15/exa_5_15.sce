// Exa 5.15
clc;
clear;
close;
// Given data
t=1/(2*10^6); // time of one cycle o 2MHz clock in sec
N=500;// number of cycle
t1= N*t;// time of 1 cycle by the electronic counter in sec
f= 1/t1;// in Hz
f=f*10^-3;// in kHz
disp(f,"Frequency of input signal in kHz")
