//Exa 2.7
clc;
clear;
close;
//given data
fm=50;//in kHz
SR=0.5;//in V/uSec
//formula : SR=2*%pie*fm*Vm
Vm=(SR*10^6)/(2*%pi*fm*10^3);//in Volts
disp(Vm,"Maximum vltage in volt is :")