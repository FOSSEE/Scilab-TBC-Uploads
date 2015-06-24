//Ex 3.7
clc;
clear;
close;
format('v',5);
SR=6;//V/micro second
//Part (i)
Vm=1;//V
fm=(SR/10^-6)/(2*%pi*Vm);//Hz
disp(fm/1000,"part (i) Maximum frequency, fm is(kHz)");
//Part (i)
Vm=10;//V
fm=(SR/10^-6)/(2*%pi*Vm);//Hz
disp(fm/1000,"part (ii) Maximum frequency, fm is(kHz)");
