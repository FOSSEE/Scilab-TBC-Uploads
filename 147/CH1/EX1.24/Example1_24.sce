//Voltage of battery E, Current through bd i5
close();
clear;
clc;
R1 = 10;//ohm
R2 = 20;
R3 = 30;
E = 45;
i5 = 0;
R4 = R2*R3/R1;
//Effective Resistance 'Re'
Re = (R1+R2)*(R3+R4)/(R1+R2+R3+R4);
Ibattery = E/Re;
mprintf('(a): R4 = %0.0f ohm\n(b): Current supplied by battery, I = %0.1f A',R4,Ibattery);