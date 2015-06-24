//Exa 1.19
clc;
clear;
close;
//given data
Io=10;//in uA
IR=1;//in mA
VBE2=0.7;//in volts
VT=25;//in mVolts
VCC=20;//in volts
R=(VCC-VBE2)/IR;//in kohm
RE=((VT*10^-3)/(Io*10^-6))*log((IR*10^-3)/(Io*10^-6));//in ohm
RE=RE/1000;//in kohm
disp(R,"R in kohm is :")
disp(RE,"RE in kohm is :")
//note : answer in the book of RE is wrong.