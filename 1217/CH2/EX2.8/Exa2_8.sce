//Exa 2.8
clc;
clear;
close;
//given data
SR=6;//in V/uSec
//formula : SR=2*%pie*fm*Vm
// part (i) Vm=1 volt
Vm=1;//in Volts
fm=((SR*10^6)/(2*%pi*Vm))/1000;//in kHz
disp(fm,"when Vm=1 volt the limiting frequency in KHz is :")
// part (ii) Vm=10 volt
Vm=10;//in Volts
fm=((SR*10^6)/(2*%pi*Vm))/1000;//in kHz
disp(fm,"when Vm=10 volt the limiting frequency in KHz is :")