// Exa 6.3
clc;
clear;
close;
// Given data
V=120;// in volt
I=8;// in amp
R_A= 0.3;// in ohm
ammeterReading= 0.01;// in A
voltmeterReading= 0.1;// in V
AmmeterRange= 10;//in A
VoltmeterRange= 150;//in V
EA= 0.25;// constructional error of the ammeter in %
EV= 0.5;// constructional error of the voltmeter in %

Rm= V/I;// in ohm
Rx= Rm-R_A;// in ohm
ErrorAmmeter= ammeterReading/AmmeterRange*100;// in %
ErrorVoltmeter= voltmeterReading/VoltmeterRange*100;// in %
del_I= ErrorAmmeter+EA;// in %
del_V= ErrorVoltmeter+EV;// in %
// since R=V/I
TotalError= del_I+del_V;// in % in neg and pos
disp(TotalError,"Total systematic error in measurement in % (neg and pos)")
disp("So the value of Rx is specified as "+string(Rx-Rx*TotalError/100)+" ohm to "+string(Rx+Rx*TotalError/100) +" ohm")
    
