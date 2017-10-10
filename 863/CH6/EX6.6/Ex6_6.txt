//Caption:Design a non inverting schmitt trigger circuit
//Ex6.6
clc;
clear;
close;
Vcc=15//Collector voltage(in volts)
u=2//Upper trigger point(in volts)
Ib=500//Base current(in nA)
I2=Ib*0.1
Vo=Vcc-1
R2=Vo*1000/I2
i=Vo*1000/R2
R1=u*1000/i
disp(R2,R1,'Circuit components R1 and R2(in kilo ohm)=')