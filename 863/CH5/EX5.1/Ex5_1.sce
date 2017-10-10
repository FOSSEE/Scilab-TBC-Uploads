//Caption:Design a non inverting amplifier by determining Required resistances and output voltage
//Ex5.1
clc;
clear;
close;
Av=28//Voltage gain
E=50//Input voltage(in mV)
Ib=500//Base current(in nA)
i=100*Ib*0.001
R3=E/i
Vo=Av*E*0.001
r=Vo*1000/i
R2=r-R3
R1=(R2*R3)/(R2+R3)
disp(R1,R2,R3,Vo,'Output voltage(in volts),Required resistances R3,R2 and R1(in kilo ohm)=')