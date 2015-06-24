//Ex 3.4
clc;
clear;
close;
format('v',5);
SR=0.5;//V/micro second
Vm=10;//V
f=100;//kHz
fm=(SR/10^-6)/(2*%pi*Vm);//Hz
disp(fm/1000,"Maximum frequency, fm is(kHz)");
