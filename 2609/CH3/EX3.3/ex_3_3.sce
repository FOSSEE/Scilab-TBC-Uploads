//Ex 3.3
clc;
clear;
close;
format('v',6);
SR=0.6;//V/micro second
f=100;//kHz
Vm=(SR/10^-6)/(2*%pi*f*1000);//V
disp(Vm,"Maximum voltage, Vm is(V)");
