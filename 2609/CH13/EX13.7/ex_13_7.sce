////Ex 13.7
clc;
clear;
close;
format('v',6);
RL=1:10;//ohm
R1=5;//ohm
Vref=5;//V
IL=1;//A
IQ=0;//A
Iref=IL;//A
R1=Vref/Iref;//ohm
disp(R1,"Value of resistor R1(ohm)");
