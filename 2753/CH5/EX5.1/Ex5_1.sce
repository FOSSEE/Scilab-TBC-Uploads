//Example 5.1: 
clc;
clear;
close;
//given data :
Pac=0.1;//in W
Vcc=20;//in V
Ic=20;//in mA
Pdc=Vcc*Ic*10^-3;//in W
eta=(Pac/Pdc)*100;//efficiency
format('v',4)
disp(eta,"efficiency is ,(%)=")
